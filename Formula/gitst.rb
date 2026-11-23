# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/gitst (.github/workflows/release.yml) on every tagged release.
class Gitst < Formula
  desc "Live, glanceable git status TUI for small terminal panes"
  homepage "https://github.com/dfallman/gitst"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.2.1/gitst-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "737c6588907ae32292f65d99d8fd0a9c01478ee37770dc5e7e615a9218a29369"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.2.1/gitst-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "e65804b5cac4fbe8a0885587567aec55493466b822d8c479b048a4eca5e08845"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.2.1/gitst-0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7dd71a201df0d8c849d8b4ff55ba222dd72ced289a4c0e010973e6e0f407ef94"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.2.1/gitst-0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa37b0092e7af88ace70c44395cab4c1d9328964c51437f2a25c21e22dcd5dd9"
    end
  end

  def install
    bin.install "gitst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitst --version")
  end
end
