class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.40/alter-cli-macos-arm64.tar.gz"
      sha256 "e02f0086f3d7809e137e9c2fd6c5c0cf43fa31c7de0488a4fc13f22ce63cb36e"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.40/alter-cli-macos-x64.tar.gz"
      sha256 "3f70e954de54eb30d5d5f144132d72391f2b1a565cb7515587d47276d02015d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.40/alter-cli-linux-arm64.tar.gz"
      sha256 "e45e5c36928d29ca7e82a6db62beae8d43e0ad8d89929076d4d573c361aef179"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.40/alter-cli-linux-x64.tar.gz"
      sha256 "63f15de56daaf1243fb7b9cc358cd116cc18c07f2e5e7c5708992721341ad9b8"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
