class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.15.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.2/alter-cli-1.15.2-macos-arm64.tar.gz"
      sha256 "3acb6c6a39819447a2dfca862c21cff28d2e99c0d35910890ee138f6e472918f"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.2/alter-cli-1.15.2-macos-x64.tar.gz"
      sha256 "8b92abf7f2e6da9b0c80b9d4803a4276962b7ae751d2cd148b01fb4a09cb50f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.2/alter-cli-1.15.2-linux-arm64.tar.gz"
      sha256 "41588d675f7a43012e178f88ab8ed8482e0019020d889b12eb397a1948557413"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.2/alter-cli-1.15.2-linux-x64.tar.gz"
      sha256 "36255b6f8515cdcff07a37bc74039a353413d10f205297764778316133375e3f"
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
