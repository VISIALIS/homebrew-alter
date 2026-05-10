class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.12.0/alter-cli-macos-arm64.tar.gz"
      sha256 "25017afbeef106dcf672627be0bf08af70b92cc4ee6257353b2c4d7b9ff2c747"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.12.0/alter-cli-macos-x64.tar.gz"
      sha256 "5d34104b65554b494cbba0c2913b104dca26d8c967502c5ca8bb96ecf5449c26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.12.0/alter-cli-linux-arm64.tar.gz"
      sha256 "1d215d5128238727082605cebb47c36b75e3c12765741388a72e242604f5cdf7"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.12.0/alter-cli-linux-x64.tar.gz"
      sha256 "570d2e531e7deac9127d8ca426948978b2110d4551e7eca5ee70a35b2b41f489"
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
