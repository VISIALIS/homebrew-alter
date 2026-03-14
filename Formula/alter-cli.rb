class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.5.0/alter-cli-macos-arm64.tar.gz"
      sha256 "f97231b354354cfd5674918735981823565e630bd8e502f1b0136894a821520d"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.5.0/alter-cli-macos-x64.tar.gz"
      sha256 "17faaa5d88dae6b9a9c19f71570c25ccf6780db84c0723218e94ff3dfc28df1e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.5.0/alter-cli-linux-arm64.tar.gz"
      sha256 "e48e6c3c1046695ddcccfc39b8e80ccf7d41de6700dc8df3b22458d8c8d2141d"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.5.0/alter-cli-linux-x64.tar.gz"
      sha256 "0770dfd92421a6d4945c37ce25fe5c646958c5bdec420370b243ffeebf2bab33"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
