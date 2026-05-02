class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.10.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.3/alter-cli-macos-arm64.tar.gz"
      sha256 "8bf852465ac87664d01c075acde2134f99225d771944060b8abcf95bbc993fa5"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.3/alter-cli-macos-x64.tar.gz"
      sha256 "3f75c4617d0e4ddf274150bc89e690987e9aef6a90fee03e19b11bf161d01593"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.3/alter-cli-linux-arm64.tar.gz"
      sha256 "09ab8ca13e19ba052dad3bfa033793a7e36a1b5c59719177758b8a725eb06e92"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.3/alter-cli-linux-x64.tar.gz"
      sha256 "994b268eb2fe82c11aaa499f5ebb5aa7cb1c50f61a68f91cebe5b18ec0c33c9e"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
