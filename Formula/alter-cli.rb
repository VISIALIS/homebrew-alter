class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.15.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.1/alter-cli-1.15.1-macos-arm64.tar.gz"
      sha256 "b56cbea499221a56e4c80c33a9f536258c237731e396d8cb0707a2e5709497b0"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.1/alter-cli-1.15.1-macos-x64.tar.gz"
      sha256 "b20d26596536db3588b0cf5178aa7bfb15f46e7560082938361b3be3bf5f0585"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.1/alter-cli-1.15.1-linux-arm64.tar.gz"
      sha256 "4bffa7051a0644620e09b9b6ca65e79795fe618311bdd4d6310bc81515f3d282"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.1/alter-cli-1.15.1-linux-x64.tar.gz"
      sha256 "f97da811f2ae1a44502339ffe3b3e660aba70fb08593e0df2ce8700ea38d1bef"
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
