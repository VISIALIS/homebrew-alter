class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.13.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.5/alter-cli-macos-arm64.tar.gz"
      sha256 "43706883de75cdd9ef7ae26f828936671e6ed2367ee0dcd97b103496fc16eddd"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.5/alter-cli-macos-x64.tar.gz"
      sha256 "c98fa14044301b6bd835a8e0e8a6b1c1e4bdc40ed0f4f079fd0253d4622402ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.5/alter-cli-linux-arm64.tar.gz"
      sha256 "adb820837027ae6174fe29c821c544fff3140956d1f0a753998b0287447c7a5c"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.5/alter-cli-linux-x64.tar.gz"
      sha256 "60f4e23d024f8498735f3bfa8a391732b18c736882b14556ee153135115fa62e"
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
