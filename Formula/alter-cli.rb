class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.11.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.3/alter-cli-macos-arm64.tar.gz"
      sha256 "72b63e901ad627ff5bf5577f6c5d170ad4e0d32fb726ae31069f92fa4270edd5"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.3/alter-cli-macos-x64.tar.gz"
      sha256 "5f74468d2474dfa29e8e27a6c6f4edc597ca86e06bd692de2446eaf5226850c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.3/alter-cli-linux-arm64.tar.gz"
      sha256 "37607f625b656fc474cc2a19f0cc6531b2488c81dd7299ad3ea995cbdba94f96"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.3/alter-cli-linux-x64.tar.gz"
      sha256 "4bba1567d252f8bc6f8f016d757629c881796d35d8b7f13751d145eed7205ec1"
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
