class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.52"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.52/alter-cli-macos-arm64.tar.gz"
      sha256 "ee915b539af0d6fbe2d4d14e050fb612493b663539388a997fd18ef8c9bb23fd"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.52/alter-cli-macos-x64.tar.gz"
      sha256 "974e165ebe913ced1c18131f4e6d13aeb25305ccbac2cde61ab313bdfdf37f68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.52/alter-cli-linux-arm64.tar.gz"
      sha256 "110f73ef75066edc3c4299ca6b78863e09fa6d4d8eacbbe7d58419e3415c9841"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.52/alter-cli-linux-x64.tar.gz"
      sha256 "a622d54c66a55ce833cc1b65598a6ce7feb64427c75bb231f444530b837c5038"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
