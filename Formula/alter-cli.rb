class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.46"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.46/alter-cli-macos-arm64.tar.gz"
      sha256 "a7f7483bcbb76e7452ed3cfe4a7b59d5ae4cd04350615b36bf9732986bb6033d"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.46/alter-cli-macos-x64.tar.gz"
      sha256 "88ab57cf7cb9118c57344fb4e3fe3ddda7a96f5552dbfae58d3806ba1d04659a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.46/alter-cli-linux-arm64.tar.gz"
      sha256 "4e5a767544afdfce41ab0a4d5db3a2eff32bacc75a64e2d3b49f86fd9821fb5b"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.46/alter-cli-linux-x64.tar.gz"
      sha256 "42f0e4e012902c58358adc866897ae2fb32d9ae8dbea2cf701d4c5aea9451b57"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
