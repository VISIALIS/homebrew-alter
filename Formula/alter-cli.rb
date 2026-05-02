class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.10.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.4/alter-cli-macos-arm64.tar.gz"
      sha256 "0e284324dabd38e43be2a91ad651496415785c271f50016a5c5fbc0eb3841e21"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.4/alter-cli-macos-x64.tar.gz"
      sha256 "8ac427ea5979be2b73e44959fdc1d6461798a1ea23ca41b76f5652c653fb5e0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.4/alter-cli-linux-arm64.tar.gz"
      sha256 "a243ef1e6949a6a8466a25c9fc8e467ad7e98a2fc6114924fcae8e03242e86bf"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.4/alter-cli-linux-x64.tar.gz"
      sha256 "adba1f8589230892eb3feff568ca50580bd07dbff0653b3eead4511ddeba164d"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
