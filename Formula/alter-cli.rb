class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.1/alter-cli-macos-arm64.tar.gz"
      sha256 "ec2c207e53c9061b044dbddd8e849399a00011629ea0507fb29ccf7a1ccbba39"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.1/alter-cli-macos-x64.tar.gz"
      sha256 "8edf689ccca01d5147e53675f2cb686ef8456ab817e645294aa371af0c41221b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.1/alter-cli-linux-arm64.tar.gz"
      sha256 "6af4f6fba3c789f83648cb57973a37f95cee18d997df8e0d4942baa897319ac7"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.1/alter-cli-linux-x64.tar.gz"
      sha256 "36f3998174114e09c8f65d04e68cc8b4f9ee4cdb9bf9593dbe82178641ef74ea"
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
