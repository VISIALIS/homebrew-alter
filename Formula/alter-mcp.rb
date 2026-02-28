class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.3.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "428b9fbaab444cb13148fd3b4087a959eb8076b6a68342e6dd37ab79d6fe1267"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.3.0/alter-mcp-macos-x64.tar.gz"
      sha256 "fae7b7af23071ec68221e27228d1b023fd579f9c7dec584ba386f59991f9e789"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.3.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "2522d24a61eaed38bd485283a793e3ead97e46dbe21d809afa013c2d848414e5"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.3.0/alter-mcp-linux-x64.tar.gz"
      sha256 "5de16a6fe8957937401be817a886def191c3a588cb035a0ffb9aa9aa10772ef3"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
