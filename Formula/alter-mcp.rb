class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.39.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.39.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "e8b09085c8d84285416c8c737bcbdf90ce7710711e8714d4ab0c4aeeb7607a13"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.39.0/alter-mcp-macos-x64.tar.gz"
      sha256 "cd9d56a0fe7fcf2ff9099cc2b87e918d930fedd8dbe51f6807f598f0ee2d2881"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.39.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "cad8b581068e8f328f5d2a45f68ee372d338bae54d310abe42068e282da7a208"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.39.0/alter-mcp-linux-x64.tar.gz"
      sha256 "f8dc098494994429e56db6b59b535acd1a4a8f7e62ce3a2b15341d0c4a60a8c1"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
