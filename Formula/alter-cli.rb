class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.0/alter-cli-1.15.0-macos-arm64.tar.gz"
      sha256 "65e3dedc11a52a157bb9cf3d7f02bef3485d8cfdc12d4bde27821e2c6661811c"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.0/alter-cli-1.15.0-macos-x64.tar.gz"
      sha256 "39f7b0e6356d9ee499c897b68ed986702b9e350caee52d2329f7adb78cca0913"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.0/alter-cli-1.15.0-linux-arm64.tar.gz"
      sha256 "8b5c276cead2dd817d9393ffed5a2b470ad21b11a4d8382285f09ffe8d6c8182"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.0/alter-cli-1.15.0-linux-x64.tar.gz"
      sha256 "ebebf273c9624e82ca9e9fcb4422290a93ab14f2a5ff0f26a81649c4d3cffeae"
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
