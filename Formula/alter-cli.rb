class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.2/alter-cli-macos-arm64.tar.gz"
      sha256 "ebdba0fd7268a9896887c784e776489b990dc011f72db64ec6619644b07cce96"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.2/alter-cli-macos-x64.tar.gz"
      sha256 "5f0673d3d16b94b05a237fcca3dcf3afc434f09f5880ee3e4aa01d6adfdf6265"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.2/alter-cli-linux-arm64.tar.gz"
      sha256 "005fbb93e8cd857a865c73046b6fc43301bc22343dc52d317d12e05432220adf"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.2/alter-cli-linux-x64.tar.gz"
      sha256 "7e75ffac828f88081c89ee40b6f2eee8b303f861159e82643f299c8d7433ae10"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
