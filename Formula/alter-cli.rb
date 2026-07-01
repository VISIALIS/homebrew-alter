class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.18.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.18.1/alter-cli-macos-arm64.tar.gz"
      sha256 "cae09a2770af32e8c6e85672859002a78173f4799d338ac00d54c543f425f326"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.18.1/alter-cli-macos-x64.tar.gz"
      sha256 "535c3d7eb9a98a206f5e374f914f553c32c3a6b3b5ddae5fecefd6986c6b6eb2"
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
