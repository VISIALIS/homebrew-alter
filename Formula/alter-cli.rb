class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.25.0/alter-cli-macos-arm64.tar.gz"
      sha256 "fd3210b0cae7a38eb593acc58964d4416019a4b9666985efefb8805e9f34ea3e"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.25.0/alter-cli-macos-x64.tar.gz"
      sha256 "6ab8351f830a1cb44b2bf5f65af93e447a116f1d8b662252cdba746f3823cf9d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.25.0/alter-cli-linux-arm64.tar.gz"
      sha256 "85a8955af527bb83762c2191c48de2ad6222d603ec4940281ff78e3c00ef6df8"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.25.0/alter-cli-linux-x64.tar.gz"
      sha256 "3ec42127a3276128302b6a90731dad85150733adf953881ef3eeb3ef5b6f32cf"
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
