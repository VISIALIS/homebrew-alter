class AlterMcp < Formula
  desc "Model Context Protocol server for AI agents integration with Alter"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.26" # Updated automatically by CD
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/VISIALIS/alter-brew/releases/download/v1.0.26/alter-mcp-macos-arm64.tar.gz"
      sha256 "1e6051d3daf824f66240e7315a2dfd31615ec60935e97fe7328792a4fe9b9ad2" # Updated automatically by CD
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
