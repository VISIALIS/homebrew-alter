class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.51"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.51/alter-mcp-macos-arm64.tar.gz"
      sha256 "fcda46fc04b2f1ed3bb725b595d0f63f21f1b6b8383678dde79f89353d027d6e"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.51/alter-mcp-macos-x64.tar.gz"
      sha256 "ea5998064e2aa080096c922a17c97fc8062bd1ae7fbb922f3f43afd01060c564"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.51/alter-mcp-linux-arm64.tar.gz"
      sha256 "4ca6eedd1ddb0061071526e7843097f8ce358cc4ceb6a8a88116b6e1a7e58aed"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.51/alter-mcp-linux-x64.tar.gz"
      sha256 "104b7e4bf006eee870b013b3bb2c09925ac42d0797c7c71670be02bbddf46340"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
