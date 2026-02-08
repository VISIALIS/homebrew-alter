class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.42/alter-cli-macos-arm64.tar.gz"
      sha256 "7fcbb1ca750d5c608d0c244e015dc401ec0afc8ef7b5e17799c9411923f3b26d"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.42/alter-cli-macos-x64.tar.gz"
      sha256 "614534a63c925fa8c5f4a3e8d42c8282007c0cbde97b78583150125d0fa719d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.42/alter-cli-linux-arm64.tar.gz"
      sha256 "a5a3e582722bbdff180e64104902649adf345bd6f3ccb6f09a11cf0981a28559"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.42/alter-cli-linux-x64.tar.gz"
      sha256 "9a270c6e3b944d3d52269c1d22b2ffb7977400304bd7ca4bad877cf01969dde9"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
