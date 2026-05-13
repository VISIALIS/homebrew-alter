class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.13.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.9/alter-cli-1.13.9-macos-arm64.tar.gz"
      sha256 "68994ad78dee277d10ba685a44353319997fc2cb93a16830aafc6c58fb51fe9d"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.9/alter-cli-1.13.9-macos-x64.tar.gz"
      sha256 "e361ffaf632f66a19f465a7ba8572218bd6e2f3f9798b8f67fa49fd97738036d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.9/alter-cli-1.13.9-linux-arm64.tar.gz"
      sha256 "abf418e9a8b537f128d631119ebba541f48bdcdee21971ea06a80910bbc396cb"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.9/alter-cli-1.13.9-linux-x64.tar.gz"
      sha256 "fa56e6b3564a17462d49dc993660968585f2b5385b4c9a4f5c2693aa528d1b36"
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
