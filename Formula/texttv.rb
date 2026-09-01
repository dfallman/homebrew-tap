# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/texttv (.github/workflows/release.yml) on every tagged release.
class Texttv < Formula
  desc "Render SVT Text-TV (Swedish teletext) pages in the terminal"
  homepage "https://github.com/dfallman/texttv"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/texttv/releases/download/v0.1.9/texttv-v0.1.9-aarch64-apple-darwin.tar.gz"
      sha256 "4e08745de16c7ce4a430dcd8503d779a4bb94283bd93e91130d9a07cf8b11895"
    else
      url "https://github.com/dfallman/texttv/releases/download/v0.1.9/texttv-v0.1.9-x86_64-apple-darwin.tar.gz"
      sha256 "e1b432e46dd88fb3c28d1f79681d8fb8a116a56adaa4f17120470b91affc216c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/texttv/releases/download/v0.1.9/texttv-v0.1.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b84b830fca373233e239fb9ab3f15f04da463dbf58835ae346851533f90c24d4"
    else
      url "https://github.com/dfallman/texttv/releases/download/v0.1.9/texttv-v0.1.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b210c4be64bfa53347dcca09059fc975c1dfb9c4bdb8a06c7b029a25b606fe44"
    end
  end

  def install
    bin.install "texttv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/texttv --version")
  end
end
