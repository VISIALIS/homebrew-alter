class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.50"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.50/alter-cli-macos-arm64.tar.gz"
      sha256 "54ac71a76645c893b354c1e25b38bdebc1cec9d3f5f044afbc8b63bd4b08f2af"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.50/alter-cli-macos-x64.tar.gz"
      sha256 "1bd32de942b76ce3ca4372602fc5fc387a1af12ae31a1e25e93362a1b5770916"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.50/alter-cli-linux-arm64.tar.gz"
      sha256 "3dbfbcdee7a161b602871a91d65db224792f56437363c79cdc4666ff20bfd7c2"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.50/alter-cli-linux-x64.tar.gz"
      sha256 "01234e39f6f2c59a525c3974e9d4f42913dcfce0bbcb0058147f1cc7b9d4f23d"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
