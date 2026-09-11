class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.29.0/alter-cli-macos-arm64.tar.gz"
      sha256 "57e2fb3773c6d3ecd3c7b83e21bb5989b9512935d59c0d692a42c06848b1cb12"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.29.0/alter-cli-macos-x64.tar.gz"
      sha256 "d39279cdd2ff0845a8067fe0aacf0d7817a338c329f402c9f5f241014c9b1d64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.29.0/alter-cli-linux-arm64.tar.gz"
      sha256 "235ccbb61e60aee23d39674b4ab029ccd23b7620544807f1040e38a9749d00ff"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.29.0/alter-cli-linux-x64.tar.gz"
      sha256 "3924a9441eb6f8ba99ddcbb15fd15dab010c49e8362e9aabd22673c1c06cb904"
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
