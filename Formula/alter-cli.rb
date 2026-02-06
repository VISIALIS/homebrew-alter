class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.40/alter-cli-macos-arm64.tar.gz"
      sha256 "8dda73cd22baad939de673b345797a722868fd0c4af3b67f3b3b19d573a70ab9"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.40/alter-cli-macos-x64.tar.gz"
      sha256 "72bf2f7edaa0f75b92c021734eac3049439edda8a07d2654e82c4f8a50a3c0a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.40/alter-cli-linux-arm64.tar.gz"
      sha256 "6c9c4d720d2429826a90367bf79383884e64a71758630662d516d625e60221e7"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.40/alter-cli-linux-x64.tar.gz"
      sha256 "a9c6019e9246437f82da6da0033568aa211b241a70420d280015c48f7b90ff5f"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
