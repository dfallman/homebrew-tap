# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/dan (.github/workflows/release.yml) on every tagged release.
class Dan < Formula
  desc "Fast, friendly, zero-fuss terminal text editor"
  homepage "https://github.com/dfallman/dan"
  version "0.3.10"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/dan/releases/download/0.3.10/dan-0.3.10-aarch64-apple-darwin.tar.gz"
      sha256 "a30bf78d90dd9def49dbb484d80b979ef2c5472bc1cd02b23c580315bc18f44f"
    else
      url "https://github.com/dfallman/dan/releases/download/0.3.10/dan-0.3.10-x86_64-apple-darwin.tar.gz"
      sha256 "1a10789b05820e11cf048b0ca3e1940a033f39fe745f88d80bda7bcfdfacd235"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/dan/releases/download/0.3.10/dan-0.3.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3672e5caedfe60c9df7a98481cb1b32925db1e46d6bda620f44282047de998eb"
    else
      url "https://github.com/dfallman/dan/releases/download/0.3.10/dan-0.3.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "79e52815748613f576344b43fa0251941908225ef40c4daf78ff0195067d7583"
    end
  end

  def install
    bin.install "dan"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dan --version")
  end
end
