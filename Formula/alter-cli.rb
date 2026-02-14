class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.49"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.49/alter-cli-macos-arm64.tar.gz"
      sha256 "70157aa06bd762c3219817f781c8418805bbd578fa8ccf2a6db986f937816c0f"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.49/alter-cli-macos-x64.tar.gz"
      sha256 "4fb88e024322465857df03e6a8b69aa7b396aa064f196e38db437ce26fa208b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.49/alter-cli-linux-arm64.tar.gz"
      sha256 "74997d2b090d39bf0180bc49c9ffc19a303c997bfb2a1a1a3a75b7d3336a1ca1"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.49/alter-cli-linux-x64.tar.gz"
      sha256 "09b48296f15ad594d8a0c22bb59bf8e04c11136a0942ea4bc9549d93c873494c"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
