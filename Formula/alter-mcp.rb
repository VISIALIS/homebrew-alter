class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.10.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.4/alter-mcp-macos-arm64.tar.gz"
      sha256 "faff5dfaa5b0bfb4031c1b68af0916743f6a9041227d2bf380f4b4beb091cafd"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.4/alter-mcp-macos-x64.tar.gz"
      sha256 "cf3d17585af16eb6027e86fc0619a8e3c0be892141ea8b0728bb032167a1d363"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.4/alter-mcp-linux-arm64.tar.gz"
      sha256 "d91a8bb1cb14d26a316d2229bc6305368ce9acca76cb8d230e689944b80abc3b"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.4/alter-mcp-linux-x64.tar.gz"
      sha256 "0e858246f0beed6601d71b1fe8541fcd23cca560a3a3ae28d3cc6d4ce3622807"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
