class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.39.0"
  license "MIT"

  bottle do
    root_url "https://github.com/VISIALIS/alter/releases/download/v1.39.0"
    sha256                               arm64_tahoe:   "29d22eb4d351fc1afd6ab9f0176799954b11a811bc0985e2e735c57fb62eeb41"
    sha256                               arm64_sequoia: "4ca8af7e0e3fe419446d09f68e9486e0b3de9f5bfc9b8c17d0051ea36d1e2d38"
    sha256 cellar: :any_skip_relocation, tahoe:         "6e05159d99fb529f2b509a7257a0988dae83283ca6a3c5b77e830404d17a6a2b"
    sha256 cellar: :any_skip_relocation, sequoia:       "743fe7a9e843ba063df46783b323c6df7ce48a88823f0ea747671a20203e3dcd"
  end

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
