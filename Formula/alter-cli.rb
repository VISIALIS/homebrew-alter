class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.34.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.34.0/alter-cli-macos-arm64.tar.gz"
      sha256 "1abc790aa21b8f2bbf4a7132fbe197f5ef37872054864377281cbb0c6b12abe1"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.34.0/alter-cli-macos-x64.tar.gz"
      sha256 "6307b79a0ad9e4f7094b51423cea96be70ceca9fba934b6150ebe69bfa6a8a18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.34.0/alter-cli-linux-arm64.tar.gz"
      sha256 "fcd1e55e8c70c1943850e6d8cd17cae4724ffb1ba54b5dcfaf0269fde5c19753"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.34.0/alter-cli-linux-x64.tar.gz"
      sha256 "f3012b4ef814b2d16e694a341f0e8a5e2ffa983a5c43a9f307f8530d893e1013"
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
