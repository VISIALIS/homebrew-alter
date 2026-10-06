class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.31.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.31.1/alter-cli-macos-arm64.tar.gz"
      sha256 "d39efb75db389646ac6e77ab9ea04d16495da019b5168c7d6c098303f27ebf5d"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.31.1/alter-cli-macos-x64.tar.gz"
      sha256 "d5cf5b9734f279ff9331ea22b6332ea49f9e0fc77fb7ba5c5c42bc67a112c9db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.31.1/alter-cli-linux-arm64.tar.gz"
      sha256 "1cdb69bd0949769e679c19167899af5dc0ec7aed4ca728a2fff2d7e66facab52"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.31.1/alter-cli-linux-x64.tar.gz"
      sha256 "19b9fbd823e5f70851910e1b10791c62fd64b4add6fc237c56a97b3ffb443f3d"
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
