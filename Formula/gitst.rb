# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/gitst (.github/workflows/release.yml) on every tagged release.
class Gitst < Formula
  desc "Live, glanceable git status TUI for small terminal panes"
  homepage "https://github.com/dfallman/gitst"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.1.8/gitst-0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "3692a01abf4a62caa68d5e8f18ec97a02f185eac9078b223311f514d0b22541d"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.1.8/gitst-0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "76abe956c317d8503ebe6dfec9f7a0b91206a016be91b401b03836bf9d486ca5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.1.8/gitst-0.1.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c6ab4ec2f17d87c4f82b2ac357ab82ee94e03514d3756c881568653e2021fcd6"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.1.8/gitst-0.1.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6c3eb5eab939aad775b5d237b1a1658f1c90be9aa1d99468494e85d66c685fb3"
    end
  end

  def install
    bin.install "gitst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitst --version")
  end
end
