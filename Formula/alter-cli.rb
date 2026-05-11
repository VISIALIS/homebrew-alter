class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.13.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.4/alter-cli-macos-arm64.tar.gz"
      sha256 "c9369b30065f1b5a943a26a6864ef7502f04041f530410ddb0300e254acbb63a"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.4/alter-cli-macos-x64.tar.gz"
      sha256 "fc37f5d23cf26b4ee507225b6d5c47e781ada57ded93a1d54875f18c6b4f1dc2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.4/alter-cli-linux-arm64.tar.gz"
      sha256 "ad04be6cf8363f900054819ffbeea6d20c42b7e1b5b8f8fe1a3593c57c438438"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.4/alter-cli-linux-x64.tar.gz"
      sha256 "9563a3922eedd088bc5198a3aa8fcd02afda54c485edceb70274baa6b6b30cef"
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
