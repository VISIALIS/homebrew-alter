class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.19.0/alter-cli-macos-arm64.tar.gz"
      sha256 "e83c16e34103bc967d5c2487420071b504896ef3b5f9fd9f1a643a4d0617a23d"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.19.0/alter-cli-macos-x64.tar.gz"
      sha256 "8e87c4c81dbd2da9d2bf73a49127cdae3119b1f482344dd625c9a8f018f0c2c1"
    end
  end

  def install
    bin.install "alter-cli"
    (bin/"alter").write <<~SH
      #!/bin/sh
      if [ "$1" = "mcp" ]; then
        shift
        if command -v alter-mcp >/dev/null 2>&1; then
          exec alter-mcp "$@"
        fi
        echo "alter-mcp introuvable. Installez-le avec: brew install VISIALIS/alter/alter-mcp" >&2
        exit 127
      fi
      exec "#{bin}/alter-cli" "$@"
    SH
    chmod 0755, bin/"alter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
    assert_match version.to_s, shell_output("#{bin}/alter --version")
  end
end
