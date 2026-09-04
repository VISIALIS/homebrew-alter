class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.27.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.27.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "829a3f90d4e0da1ee139e62396526598c204be5b1e1eb589ffdb54dd5df7b300"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.27.0/alter-mcp-macos-x64.tar.gz"
      sha256 "0eea48698bfa0cb68cdb17e945e90b565e13008236f26c721dc62c56e34cfebf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.27.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "002f9c5e1181f5ae6a0e831c5b3a1644df7ab40600a74560d811b6b3be01fad0"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.27.0/alter-mcp-linux-x64.tar.gz"
      sha256 "65d0050cd02bc18278473fb9780302a9f2be3f694ef365905ece57e2adff133d"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
