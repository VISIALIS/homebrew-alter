class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.54"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.54/alter-mcp-macos-arm64.tar.gz"
      sha256 "7002d4b0a19ba93b94b2c0400ed1cbf7d2bf339c33cf100b55d5b7550c52c2dd"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.54/alter-mcp-macos-x64.tar.gz"
      sha256 "ee6b94cc673163f31ce377071a740c603bfe05e202c10497aba4d4b4d81640d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.54/alter-mcp-linux-arm64.tar.gz"
      sha256 "1f1b763de70d09c2d70f7010ea3e2a1f0fb00d2d510aa35659e34fcdff9e07e4"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.54/alter-mcp-linux-x64.tar.gz"
      sha256 "d15c704a4b61bcfc03c7614ae7c9db070f7dd6744b928ef1c056cca79d37aed4"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
