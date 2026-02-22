class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.1.0/alter-cli-macos-arm64.tar.gz"
      sha256 "44bc04ee7376acc4e5ef615ab723518fe16b77d13e55a2962140f229622504a4"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.1.0/alter-cli-macos-x64.tar.gz"
      sha256 "3a10cb55f795c2a16eeb0f134ef1c4a4e479879a4186ae5929567e5c870fd04a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.1.0/alter-cli-linux-arm64.tar.gz"
      sha256 "8ff4ba1f066980aef3a5911617f2ff7f4107ec4010aefa27bcdbf8b95a578531"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.1.0/alter-cli-linux-x64.tar.gz"
      sha256 "1520c24f4e71551841a4bde3af7cadab53588364e358f4446cbb5f0cb93117af"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
