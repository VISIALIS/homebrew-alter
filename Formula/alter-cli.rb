class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.16.0/alter-cli-1.16.0-macos-arm64.tar.gz"
      sha256 "a9ba1449d1e8be57c34de4a1e3eddc7f6580aa9f6aff7130f0dcf4511efb9458"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.16.0/alter-cli-1.16.0-macos-x64.tar.gz"
      sha256 "f8c0283f03f12361300dc4e90a588751bb6afbc4f78987594c9d9e9a033c25b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.16.0/alter-cli-1.16.0-linux-arm64.tar.gz"
      sha256 "92166bb4f1f28266ceb55928206a4b2af7e6873d14c82ddb73fcbf266725ae67"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.16.0/alter-cli-1.16.0-linux-x64.tar.gz"
      sha256 "b71961fd5d33078e04153a68b66a928e2d37ae8bb19dbdcf8885d5af177382a8"
    end
  end

  def install
    bin.install "alter-cli"
    (bin/"alter").write <<~SH
      #!/bin/sh
      if [ "$1" = "mcp" ]; then
        shift
        if command -v alter-mcp >/dev/null 2>&1; then
          exec alter-mcp "$@"
        fi
        echo "alter-mcp introuvable. Installez-le avec: brew install VISIALIS/alter/alter-mcp" >&2
        exit 127
      fi
      exec "#{bin}/alter-cli" "$@"
    SH
    chmod 0755, bin/"alter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
    assert_match version.to_s, shell_output("#{bin}/alter --version")
  end
end
