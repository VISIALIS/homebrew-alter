class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.9.0/alter-cli-macos-arm64.tar.gz"
      sha256 "cb867af8610f32e59d49c087f4c94c29603c6d72133583b9b649562c5be847a7"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.9.0/alter-cli-macos-x64.tar.gz"
      sha256 "000e09c8e16cf656f25d56c8e63acd10180819d37ae3cc5e0bdbfaaf0f775d51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.9.0/alter-cli-linux-arm64.tar.gz"
      sha256 "583fd493cdb00701981b7873de1ba75eaf448fa91fe308ebea676b85ee73b962"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.9.0/alter-cli-linux-x64.tar.gz"
      sha256 "9a425344ce2a8baa46c986835e7215ffb7fbcd91f0544c8d616456e25a0504bc"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
