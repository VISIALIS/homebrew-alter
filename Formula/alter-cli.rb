class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.37.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.37.0/alter-cli-macos-arm64.tar.gz"
      sha256 "bf7830adfe823c1f9b1ce382b90c7cea37abaafa3374d8a70e231f4930dbc7bf"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.37.0/alter-cli-macos-x64.tar.gz"
      sha256 "76d31ba8e25af2a24d84056de2a3013e5bfb61b9ebe61117a74e0ff488444c57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.37.0/alter-cli-linux-arm64.tar.gz"
      sha256 "fe264f3eb6f63ca54a899e0c8b1169558d3413d5517f4f5160b7bd908eb921ac"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.37.0/alter-cli-linux-x64.tar.gz"
      sha256 "eee1cbc295e8b200124bc6c6c2d852642c0db2264ab870ff746dfde97419ef66"
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
