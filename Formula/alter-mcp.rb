class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.36.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.36.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "e03eeada30223f770d3b8b344cbfbbc774532c6213ebf41363ba1b15ba61d0b6"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.36.0/alter-mcp-macos-x64.tar.gz"
      sha256 "b7465cae9c859f7c23cca1abd3325fb4e453c0e9740e4317026316afaeec6164"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.36.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "f9fec4f018ae4a496c3575ee0dd19ea4b7e1f162b3d481b3a5b622751c996d18"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.36.0/alter-mcp-linux-x64.tar.gz"
      sha256 "a800d20f63b61b83a2090d09a2bb1b04205c42a62b33ce4387be87b35af11aa6"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
