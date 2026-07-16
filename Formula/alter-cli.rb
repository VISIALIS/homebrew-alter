class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.21.0/alter-cli-macos-arm64.tar.gz"
      sha256 "5cae4e0cbce03ca0e1619b55cd5a540c79e57b6ef33c60d529d417ba129cf3e1"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.21.0/alter-cli-macos-x64.tar.gz"
      sha256 "d43d98f28dc53a994f2ffab316d86c640506de4004c5b95c7d874889820d4cf5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.21.0/alter-cli-linux-arm64.tar.gz"
      sha256 "0d7b00631cd84c7953c7eefd178cf9a4294ed3d74f9857e78ede7c244ab0c99b"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.21.0/alter-cli-linux-x64.tar.gz"
      sha256 "03aa7d8783d177ca69b4a886a2a980d9e4694016b81ceaefd3d8f2915892b23d"
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
