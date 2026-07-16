class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.22.0/alter-cli-macos-arm64.tar.gz"
      sha256 "51a347c6fa0f9347631ce2409f4fb3f3ac569a6b78a2b92a63478944ca024add"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.22.0/alter-cli-macos-x64.tar.gz"
      sha256 "4c935d92b255979c9a3fee7269e690be1371e051cf5b78deee35300cd43a3707"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.22.0/alter-cli-linux-arm64.tar.gz"
      sha256 "efb5c50e06493870a56e2b93f295b4aea42958607a9bfc7b5901478bc9bd3308"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.22.0/alter-cli-linux-x64.tar.gz"
      sha256 "54a0d40447580425b61f12a8aeaf7b5e86bf49a02a8dfe075901c1b44f23623f"
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
