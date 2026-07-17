class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.23.0/alter-cli-macos-arm64.tar.gz"
      sha256 "4bf5bcbc9e549df8e9beb92831892054e3d08009b90efc64ac81e885a7acdc2c"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.23.0/alter-cli-macos-x64.tar.gz"
      sha256 "13def7c5a1ba9bc875e33ecfe57047d99d1db4fba900d54cc0626a694f65fcfd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.23.0/alter-cli-linux-arm64.tar.gz"
      sha256 "e5b86432711569720f7ffeb5fa0a00f2f8c010377b225c3aab991f0d4ddfe6e5"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.23.0/alter-cli-linux-x64.tar.gz"
      sha256 "4a7d1e91c5b0cb2c190bde7ebf87298af7f638e9d70566c96f9e5ee4726d51ca"
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
