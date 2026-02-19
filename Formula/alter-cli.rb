class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.54"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.54/alter-cli-macos-arm64.tar.gz"
      sha256 "211aaba06f726a8025dc8eeee5e32cad55bf40fa4e5cefe69b96911fcb5b12c7"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.54/alter-cli-macos-x64.tar.gz"
      sha256 "45887cfd9c3966a2164e45842b2f365b6b244ac69854fa6e88e864ee1c87c2d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.54/alter-cli-linux-arm64.tar.gz"
      sha256 "ebec3d5bb756bc849b32b5385dd452da0ebc52628910abb1ce0f6e807e73bdfd"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.54/alter-cli-linux-x64.tar.gz"
      sha256 "581d7556e57732f8616a85e8fbc59108f4c87981c199c9e90411b40f0ea29e3b"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
