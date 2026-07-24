class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.24.0/alter-cli-macos-arm64.tar.gz"
      sha256 "d7ac6fac5da8d218c67f4218c5fe4fc6bccb04a5c1ab61674cf2fe26d35662f4"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.24.0/alter-cli-macos-x64.tar.gz"
      sha256 "bab4c4f4ca75668bca5ac59454ea32321331b7b166fa90ef31417dd21ea4cca7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.24.0/alter-cli-linux-arm64.tar.gz"
      sha256 "c878452e57b790c1a63ddadb49344d74895f3ec9b3640ebce403e3858e7051ae"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.24.0/alter-cli-linux-x64.tar.gz"
      sha256 "d19d36aee02d71f7c36fcfb3665e8f30617de72651b4216b15ac217d194ce47e"
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
