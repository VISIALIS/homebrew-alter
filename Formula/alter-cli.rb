class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.15.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.1/alter-cli-1.15.1-macos-arm64.tar.gz"
      sha256 "07127798f3a5d174fce1061b5e8788533f9cc2e19db57b69ff4da9e4bb956a56"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.1/alter-cli-1.15.1-macos-x64.tar.gz"
      sha256 "e11e0c86721d4408dc0c018776dd41bf086fcf029a9daf6ecb9316670d575595"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.1/alter-cli-1.15.1-linux-arm64.tar.gz"
      sha256 "e62bee2c9f3ad8e34c3b187ec0da023fd3f8b959bebf0e71ac7c540c33603ab2"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.1/alter-cli-1.15.1-linux-x64.tar.gz"
      sha256 "e53818c592d2dadbbc55df484dc14bfdf9315623e7348b313bf072e38e427e5a"
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
