class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.47/alter-cli-macos-arm64.tar.gz"
      sha256 "03d7708582d64394454b9a27dfe8179060737207eed0d7dd1c6cf011cb392c35"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.47/alter-cli-macos-x64.tar.gz"
      sha256 "635fd6cf6a26eac244071fdf29e5dc7ce028920b0b532897e968a7a5dd371498"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.47/alter-cli-linux-arm64.tar.gz"
      sha256 "a6f938fe9d7e4c77e9c95ebe06ea1c2cc7b2da118e0c12658fca32011d558a18"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.47/alter-cli-linux-x64.tar.gz"
      sha256 "c9602a9603a0b9e1c4bc811dffb17fd2d6b2d6b98a5b7c94294deee603a9b385"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
