class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.20.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "1b68bf6e852ddd4c35a7bb1f9cdded19f32d7e79f528cd80124a204decc1c2bd"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.20.0/alter-mcp-macos-x64.tar.gz"
      sha256 "b0d42566d838fca9c8062e19d42e065335aa9cc28568c53c968ceee6d0ac8057"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.20.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "6dc5762a30469bc05c9d47dfc98d63363f02b33ecd104e312470d9da73855697"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.20.0/alter-mcp-linux-x64.tar.gz"
      sha256 "8d000143cb643a70ef216387ee7fb09400f6552985c5b5c9c084a388122b7353"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
