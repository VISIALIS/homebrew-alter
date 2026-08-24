class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.26.0/alter-cli-macos-arm64.tar.gz"
      sha256 "7f389ff06b74a2a9b2f23555476c8cc7f510f69efb846c1fe68d9923260309db"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.26.0/alter-cli-macos-x64.tar.gz"
      sha256 "fe052ec4d17cdd89d4e8036e7f27ab6306c429bbd0ae626899769c5f95a21e5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.26.0/alter-cli-linux-arm64.tar.gz"
      sha256 "a18999be14398682eccfe8aa58c54d481cbdbc87eda1a611a52c59e9307a1c0e"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.26.0/alter-cli-linux-x64.tar.gz"
      sha256 "3771d29c71bcbaa116e77033160ecd1008db25a78166203a046bf3ea59ecef59"
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
