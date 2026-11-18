# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/gitst (.github/workflows/release.yml) on every tagged release.
class Gitst < Formula
  desc "Live, glanceable git status TUI for small terminal panes"
  homepage "https://github.com/dfallman/gitst"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.2.0/gitst-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "9f47ebbac48d0cc40c76c18c4c1bb2a683dcf01a10623be8c4a4c5f67f699de1"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.2.0/gitst-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "23a8da80eaf34ed4f09c94c9f6470a5483578a90c29c7bc895a4660a813d399b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.2.0/gitst-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c00fcf1fa8eca41e3c8d1dae8c46690e32a6e5e037d332129488c1b5609e44aa"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.2.0/gitst-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "312f2f5e4e714bbc2e46752bee6e940e39accf849d84da1d285af1968753f37f"
    end
  end

  def install
    bin.install "gitst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitst --version")
  end
end
