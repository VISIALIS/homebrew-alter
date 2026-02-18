class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.53"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.53/alter-cli-macos-arm64.tar.gz"
      sha256 "78b54d15d951197190bf5aba4bea6f2549c2c18ddc5dfc9e40ad6d36eef1fd22"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.53/alter-cli-macos-x64.tar.gz"
      sha256 "991bc4fc60d3ca79d1b1aa940dd2b55f216108301fe050b3fcc436c5b581979a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.53/alter-cli-linux-arm64.tar.gz"
      sha256 "2890f578b5ccaa3a5c70a1fd9cd21a6d7557b7dede2b60e7401a20c96dd0a014"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.53/alter-cli-linux-x64.tar.gz"
      sha256 "80576a40216e36fc3c9e829e49ea951c7bde0d77e93c4929764888e258d27622"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
