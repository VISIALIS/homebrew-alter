class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.11.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.2/alter-cli-macos-arm64.tar.gz"
      sha256 "ff897b4145718a6adeb27b3ce93204ede6b81b5abd0abe42eb03c33462f8af46"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.2/alter-cli-macos-x64.tar.gz"
      sha256 "d0963504a7c37494baea9c1559ff2e7a62408e071e5bea0807bf8154342b9ba4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.2/alter-cli-linux-arm64.tar.gz"
      sha256 "874984df9fa26106398324423d22d5972cbe23b44179f5dad8e84c283e1517ef"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.2/alter-cli-linux-x64.tar.gz"
      sha256 "8135b3c9b98dd83fe6553e958610dce811b1fe004196086ac408563855485151"
    end
  end

  def install
    bin.install "alter-cli"
    (bin/"alter").write <<~SH
      #!/bin/sh
      if [ "$1" = "mcp" ]; then
        shift
        if command -v alter-mcp >/dev/null 2>&1; then
          exec alter-mcp "$@"
        fi
        echo "alter-mcp introuvable. Installez-le avec: brew install VISIALIS/alter/alter-mcp" >&2
        exit 127
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
