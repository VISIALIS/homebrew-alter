class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.1/alter-cli-macos-arm64.tar.gz"
      sha256 "15c08b2470f7f6da573450539096abf69b8a9107cd47920c586a85cdbdde640d"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.1/alter-cli-macos-x64.tar.gz"
      sha256 "19b17877832639bdeda1ed5ab8f7a7972cc04007930c26e362dc7b7a76e0990e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.1/alter-cli-linux-arm64.tar.gz"
      sha256 "089d41566f08f6b809b48a2c09c6fb372eebd6a9bfd78930de7c2fd29cc5b6ce"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.1/alter-cli-linux-x64.tar.gz"
      sha256 "0a8c29c5b998355e66b43835652f5e8524fed17c1fbe785f356f635584b4338f"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
