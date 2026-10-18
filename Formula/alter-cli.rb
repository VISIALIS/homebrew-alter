class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.32.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.32.1/alter-cli-macos-arm64.tar.gz"
      sha256 "053efd762d33533cdf74ed69d905186412f4857186d08d0733f705056d487c3d"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.32.1/alter-cli-macos-x64.tar.gz"
      sha256 "e848f5f554736a6824a62147e368e163767185e72513eba5dee079ba94a4699d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.32.1/alter-cli-linux-arm64.tar.gz"
      sha256 "de8a8eb2958e2aa8b62abc6f1246272543f9ba65f2cd5f2f8b3fb98aaaefd14b"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.32.1/alter-cli-linux-x64.tar.gz"
      sha256 "6ed0cbca0b4d4c5a153cc257b0daba90eb9e3ca0203f5b1e70326b769c4c2877"
    end
  end

  def install
    bin.install "alter-cli"
    (bin/"alter").write <<~SH
      #!/bin/sh
      if [ "$1" = "mcp" ]; then
        if [ "$#" -eq 1 ] || [ "$2" = "--version" ] || [ "$2" = "-v" ] || [ "$2" = "--help" ] || [ "$2" = "-h" ] || [ "$2" = "update" ] || [ "$2" = "check-update" ]; then
          shift
          if command -v alter-mcp >/dev/null 2>&1; then
            exec alter-mcp "$@"
          fi
          echo "alter-mcp introuvable. Installez-le avec: brew install VISIALIS/alter/alter-mcp" >&2
          exit 127
        fi
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
