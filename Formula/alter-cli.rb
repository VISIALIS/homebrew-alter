class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.36.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.36.1/alter-cli-macos-arm64.tar.gz"
      sha256 "964009d34367d38f00741029cb78c2b838f808f4c5295f954f8acbc709e5aa1d"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.36.1/alter-cli-macos-x64.tar.gz"
      sha256 "1422579268a9fce9f84c63b711f27ef4f4e6746fa11c5cebd86face4fffd5196"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.36.1/alter-cli-linux-arm64.tar.gz"
      sha256 "1a2dc34c48cd96fbeb7e264dff1b95941616440d03019d7aaa8388bd038c7d07"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.36.1/alter-cli-linux-x64.tar.gz"
      sha256 "6e2477e0aca07f8b080766c73dd7be00eab4714ff73b2ff880450e379ba79e2f"
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
