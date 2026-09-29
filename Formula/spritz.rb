# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/spritz (.github/workflows/release.yml) on every tagged release.
class Spritz < Formula
  desc "Nano DLNA media server — run in any folder to share it on the LAN"
  homepage "https://github.com/dfallman/spritz"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/spritz/releases/download/v0.2.0/spritz-aarch64-apple-darwin.tar.xz"
      sha256 "63a81b8f040244b04de78d67c5fca3be45d23956a06b3304aa2879f5c5b71e64"
    else
      url "https://github.com/dfallman/spritz/releases/download/v0.2.0/spritz-x86_64-apple-darwin.tar.xz"
      sha256 "d54c7dcf3c5411178b998a94ff0680d759772a7832d321fcbc6292cb7a252244"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/spritz/releases/download/v0.2.0/spritz-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "29ff8f0ce4619b70d82a1abcaf0c9d6cc77d0c332ddd7299d3e1849aaca28860"
    else
      url "https://github.com/dfallman/spritz/releases/download/v0.2.0/spritz-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "48261875d49772d86b11bbc8adbdd95434cfb7a8612eb8fbf27a343cf23b45f4"
    end
  end

  def install
    bin.install "spritz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spritz --version")
  end
end
