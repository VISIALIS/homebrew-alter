class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.0/alter-cli-macos-arm64.tar.gz"
      sha256 "4bec0c1ee7bcde803e811e47fe2b32be89250ba2ba3aae1ddf0661ea6c25b761"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.0/alter-cli-macos-x64.tar.gz"
      sha256 "4b2c0965c098241f187c0fdf9898afa92deba6714a0443c61f38da4c04534c39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.0/alter-cli-linux-arm64.tar.gz"
      sha256 "787cabca16814f8c4b1af1ebb3b42989b70e7fabb2a29d809017dd7e403e2f08"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.0/alter-cli-linux-x64.tar.gz"
      sha256 "15c4c5d9950101b58f9ff45161710900f20b4f79b8e8fee5eb2f84f8e8257b2c"
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
