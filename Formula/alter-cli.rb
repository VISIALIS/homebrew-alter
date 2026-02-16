class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.51"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.51/alter-cli-macos-arm64.tar.gz"
      sha256 "a51975b237e8c4ee0a78128f587629cf19e3eb9233659e70682bffa21baa1178"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.51/alter-cli-macos-x64.tar.gz"
      sha256 "60101e3c052fcc549053c1ea7b69d58d104cc34723585bf138409adc3a54a0fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.51/alter-cli-linux-arm64.tar.gz"
      sha256 "4761f3d43bebf85859d5cb67ab2a3bc7bba2b0201c2ae9d915be1cf9d20a8674"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.51/alter-cli-linux-x64.tar.gz"
      sha256 "261ec9a87bb0cb03d93cca9ab6538692d828369e63b31f5139c33127b5482995"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
