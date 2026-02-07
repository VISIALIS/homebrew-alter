class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.41/alter-cli-macos-arm64.tar.gz"
      sha256 "164ae54c74ff3de8facb2adb5e5bf6db1247311d3782c3211933021fc19454dd"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.41/alter-cli-macos-x64.tar.gz"
      sha256 "515552fc6a874ba1ef269b36b9bab320fba9192a2e0ba5b21b0c91a00e9baf09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.41/alter-cli-linux-arm64.tar.gz"
      sha256 "067fb5c5acad0e71a7d914ef5acc769aef9ab56eda0ff0322e3a35f000afd9e7"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.41/alter-cli-linux-x64.tar.gz"
      sha256 "237c5b900ccaff26a3ff279fadd80fa4d86027f00265b652dd405462d4082f8c"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
