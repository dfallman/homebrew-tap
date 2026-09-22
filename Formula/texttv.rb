# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/texttv (.github/workflows/release.yml) on every tagged release.
class Texttv < Formula
  desc "Render SVT Text-TV (Swedish teletext) pages in the terminal"
  homepage "https://github.com/dfallman/texttv"
  version "0.1.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/texttv/releases/download/v0.1.11/texttv-v0.1.11-aarch64-apple-darwin.tar.gz"
      sha256 "d5da7340819cb108938f6af10f8f53c6dcfe0941783823a1a1a04372f5f0da9e"
    else
      url "https://github.com/dfallman/texttv/releases/download/v0.1.11/texttv-v0.1.11-x86_64-apple-darwin.tar.gz"
      sha256 "8384ecd29d5d604bc85eabd087658ac6c984fd1d4bc79b1c849de4d78b9fc278"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/texttv/releases/download/v0.1.11/texttv-v0.1.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "18c3eba4cff6a8e221409e92c1ffa7d3ec958b6ae221d4f5d02e9585b56d6af8"
    else
      url "https://github.com/dfallman/texttv/releases/download/v0.1.11/texttv-v0.1.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2892ac52e9c6c36bcd7c764906c4845b820931856fcfa25ec3e3d0c04da3a13e"
    end
  end

  def install
    bin.install "texttv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/texttv --version")
  end
end
