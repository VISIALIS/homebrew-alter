class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.45"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.45/alter-cli-macos-arm64.tar.gz"
      sha256 "67f94710aa68d3e84d823b9a2ed2bb243531819808e3fc150b1187e9ed084127"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.45/alter-cli-macos-x64.tar.gz"
      sha256 "af4b85b5a8ef4a31cb0be688f19f714b6d6fe992cdb9aa111d1df0e0c28207f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.45/alter-cli-linux-arm64.tar.gz"
      sha256 "507ae61e20400e034a3b4a126eac1faa6ff3f6685d8bd8e73c2d7c3748cb9cb4"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.45/alter-cli-linux-x64.tar.gz"
      sha256 "deb70834497d9a1d2d1533261a2efff9dc4214d63b220c0c83df115eb12b84a4"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
