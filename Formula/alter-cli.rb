class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.36.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.36.0/alter-cli-macos-arm64.tar.gz"
      sha256 "fa46bd54d4bdc5f22b0195300a055f21c8021f73e50c404d9d7b7650649dfb0b"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.36.0/alter-cli-macos-x64.tar.gz"
      sha256 "5daf22e82f43f0649f988f07022c958ac91f251954d796280a1993be06a40af4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.36.0/alter-cli-linux-arm64.tar.gz"
      sha256 "220783001df79601b0f70943af12d5558d7e0524b461156ff89ffb1c0e2ffec7"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.36.0/alter-cli-linux-x64.tar.gz"
      sha256 "b01bbb1894392fd86cdecbfd6a3f64796d74cf922a9fd78aff920ca9af3896a2"
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
