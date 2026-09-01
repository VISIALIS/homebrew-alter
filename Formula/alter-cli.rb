class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.26.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.26.1/alter-cli-macos-arm64.tar.gz"
      sha256 "a2c6885fd91edb6638fc593efa4c6ccba2a4a7d288602be0fba0e5b66463a4c2"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.26.1/alter-cli-macos-x64.tar.gz"
      sha256 "310ac01c5ec4cada55fd77c85a0d987e66e7e966e594cc5a0fc5c880ad19ee5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.26.1/alter-cli-linux-arm64.tar.gz"
      sha256 "ec19b04b43397315ec9e108caa4c71571d59a14925676bcbba18c354c975428a"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.26.1/alter-cli-linux-x64.tar.gz"
      sha256 "e724fbc7ba93dbecd9600668f37d545c86891383929db35ba0934c1c45929684"
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
