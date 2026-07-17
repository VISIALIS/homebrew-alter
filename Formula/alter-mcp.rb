class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.23.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "e21f881e2dba45defd6cec33ba7f176918f46df23881282105461459962ae015"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.23.0/alter-mcp-macos-x64.tar.gz"
      sha256 "86b73059017bea03c3587463ff2be3031be124d1714b6e4788e9eaf8d2bbe111"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.23.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "fcd200c985b1301e94efc439971a6a3f674fc035d329f48f1e9a73b5aa1fc8d6"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.23.0/alter-mcp-linux-x64.tar.gz"
      sha256 "dcf4b0858e842eae9010d4ca566452f001c39cd73d5510043701e711d1c34afe"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
