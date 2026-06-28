class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.17.1/alter-cli-macos-arm64.tar.gz"
      sha256 "de13e82f5511a80cab39e9ee986912859d62ce68d9fdab1de510cb37c4835d77"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.17.1/alter-cli-macos-x64.tar.gz"
      sha256 "d4320a3b5500fa9485e4ff890fc9f7c8949270c7b680175328ef1a5d756fc5fd"
    end
  end

    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.17.1/alter-cli-linux-x64.tar.gz"
      sha256 ""
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
