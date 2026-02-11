class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.45"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.45/alter-mcp-macos-arm64.tar.gz"
      sha256 "024ae322a82a58247b3748d9c7260c80ea7404aa30ce08010e5b917a15a14220"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.45/alter-mcp-macos-x64.tar.gz"
      sha256 "f18a669fe16ed2b7e48e7b9687a33fc8430428fe5ce5e3136db931ba2d5dec14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.45/alter-mcp-linux-arm64.tar.gz"
      sha256 "21b656b1cea4679625df913a20fd6107c9dca41c6890ce8d21f4c2a3b26875e3"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.45/alter-mcp-linux-x64.tar.gz"
      sha256 "94ffa453776fedf14185546667b931d9569a24c0153e9b3d8ef15924843564c0"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
