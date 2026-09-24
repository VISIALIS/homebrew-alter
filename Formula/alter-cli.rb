class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.30.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.30.0/alter-cli-macos-arm64.tar.gz"
      sha256 "cac202741829e003fdf81ee0194203cac53ebee9fa9e5cee8e3f28f72b34e787"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.30.0/alter-cli-macos-x64.tar.gz"
      sha256 "4d26ac7c17b9c7093c3af84052a61f6135e5ab015ead8e65b5034c9a04d8a38a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.30.0/alter-cli-linux-arm64.tar.gz"
      sha256 "f1bed16d379f1dce68a23207bae04773797d7c0e09d654e54ea753d022f3f8d8"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.30.0/alter-cli-linux-x64.tar.gz"
      sha256 "498c4ffc503ab8c0f18e45c0f0f02307a2f95d45aede2f47983ec784902407b7"
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
