class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.31.0/alter-cli-macos-arm64.tar.gz"
      sha256 "cd29897e8cceeb8d5e272c707813609454024eae396c5f01db7dd3588b46d76a"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.31.0/alter-cli-macos-x64.tar.gz"
      sha256 "11b2735304cded3b4b67ef82e898d537df75bdad2e08462248e30d90d2a1e1f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.31.0/alter-cli-linux-arm64.tar.gz"
      sha256 "9a27c399f7da2b78d5d818cb5e225785ffbe59c7bf2dca9ae04dd761d66b3367"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.31.0/alter-cli-linux-x64.tar.gz"
      sha256 "630aa516933409572414877c0f8c7b30ee9403486b5ec0a87ceef6a5075dd9c2"
    end
  end

  def install
    bin.install "alter-cli"
    (bin/"alter").write <<~SH
      #!/bin/sh
      if [ "$1" = "mcp" ]; then
        if [ "$#" -eq 1 ] || [ "$2" = "--version" ] || [ "$2" = "-v" ] || [ "$2" = "--help" ] || [ "$2" = "-h" ] || [ "$2" = "update" ] || [ "$2" = "check-update" ]; then
          shift
          if command -v alter-mcp >/dev/null 2>&1; then
            exec alter-mcp "$@"
          fi
          echo "alter-mcp introuvable. Installez-le avec: brew install VISIALIS/alter/alter-mcp" >&2
          exit 127
        fi
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
