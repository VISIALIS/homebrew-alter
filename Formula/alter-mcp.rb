class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.19.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "83dd6f53817a03ebdd83517f72e34fb280812cdcc274b3f109a6587219e39254"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.19.0/alter-mcp-macos-x64.tar.gz"
      sha256 "b8ad126c7888ae634c2603f1bca0c793034be25ad0fd3a1388f859dd414a398e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.19.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "eda69805272a1bfd95af1fecd932dd90ebd1adfd3050aa7d33326da93c5687d6"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.19.0/alter-mcp-linux-x64.tar.gz"
      sha256 "a8ffb6c94d40d4245fbf2b8e27702e4476d793f53cba3c2119d7742753eb1a3d"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
