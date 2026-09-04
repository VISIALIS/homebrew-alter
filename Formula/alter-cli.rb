class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.27.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.27.0/alter-cli-macos-arm64.tar.gz"
      sha256 "32825bbd0c0ace0417e86a7aa3c0ff3184ced7cebca4e054fcc87e3a95750a01"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.27.0/alter-cli-macos-x64.tar.gz"
      sha256 "5aa9db1a2f72440dc9d8c6c3facb91d34a2be007dc85f63eac4a23fb1691dc48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.27.0/alter-cli-linux-arm64.tar.gz"
      sha256 "ab184844ed1ab4d32b78e2a107244c55f7fb2fbe5d7ee90c8a3136d5b6656256"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.27.0/alter-cli-linux-x64.tar.gz"
      sha256 "8eeaea3df7f0a2bd8795ebdb35c32f7ce2a04bb5bf89aa902726c98482c8800a"
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
