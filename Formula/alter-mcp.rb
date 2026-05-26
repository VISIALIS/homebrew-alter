class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.15.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.1/alter-mcp-1.15.1-macos-arm64.tar.gz"
      sha256 "9b8b421b4b5796e70c2a459246be2dcfafc623ec6889aed9b0ba6ca50684193f"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.1/alter-mcp-1.15.1-macos-x64.tar.gz"
      sha256 "0d362de81661c51761c638ad6c2321a2aea40e16636e95f9aad0e156bb8bc0b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.1/alter-mcp-1.15.1-linux-arm64.tar.gz"
      sha256 "4be93015e2b95117248f761c9601ea3159938452c8ccfcd457fcc0654d809e3a"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.1/alter-mcp-1.15.1-linux-x64.tar.gz"
      sha256 "c3aeff016ec96cbde8dc315aa7e757feebd2811d09b875cd5ec0e6832a5132bc"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
