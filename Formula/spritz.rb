# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/spritz (.github/workflows/release.yml) on every tagged release.
class Spritz < Formula
  desc "Nano DLNA media server — run in any folder to share it on the LAN"
  homepage "https://github.com/dfallman/spritz"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/spritz/releases/download/v0.1.6/spritz-aarch64-apple-darwin.tar.xz"
      sha256 "a59bac91353e84abe90e85c1140dec31df4456937a363552c9d2d4dfb2f31241"
    else
      url "https://github.com/dfallman/spritz/releases/download/v0.1.6/spritz-x86_64-apple-darwin.tar.xz"
      sha256 "186dad38313c815d84f668007d20a718ec822d08a0149ebaf7389b1144be1974"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/spritz/releases/download/v0.1.6/spritz-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "a2b38f54c6584934d780232ffb8170d2de5b3e7f23b4381e9e9fb3893a6b3cea"
    else
      url "https://github.com/dfallman/spritz/releases/download/v0.1.6/spritz-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "80ab9ebbadfd12cd1f2237954b0952303b5d0a061a3989d44d90891bfab61d23"
    end
  end

  def install
    bin.install "spritz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spritz --version")
  end
end
