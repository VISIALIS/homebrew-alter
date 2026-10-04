class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.31.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "8e0dc5425a110f9e4e3a001382ed5d85e1fd9092bb1b8d81cfa88168948712b9"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.31.0/alter-mcp-macos-x64.tar.gz"
      sha256 "7cb625ceb702e4415e92e2624fa2e6d16522d985eb1e52bb21f9b8711204ee50"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.31.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "b79d3ab9aa51ff24e775b69aeef0263e0ea6e549de60298d5233198880423dca"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.31.0/alter-mcp-linux-x64.tar.gz"
      sha256 "c44b3af5f55a1501d49339946b85539be67c2acd8c3853e51e0c33bf11274bbf"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
