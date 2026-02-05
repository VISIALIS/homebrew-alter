class AlterCli < Formula
  desc "Multi-chain EVM address classifier CLI for developers and automation pipelines"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.37"
  license "MIT"

  on_macos do
    url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.37/alter-cli-macos-arm64.tar.gz"
    if Hardware::CPU.arm?
    end
    sha256 "b13812d68f44a6d7a57cb997b0284ac1732fb5cadf05e150bf31eccaa91f2dcd"
  end

  on_linux do
    url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.37/alter-cli-macos-arm64.tar.gz"
    if Hardware::CPU.arm?
    end
    sha256 "b13812d68f44a6d7a57cb997b0284ac1732fb5cadf05e150bf31eccaa91f2dcd"
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
