# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/gitst (.github/workflows/release.yml) on every tagged release.
class Gitst < Formula
  desc "Live, glanceable git status TUI for small terminal panes"
  homepage "https://github.com/dfallman/gitst"
  version "0.1.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.1.13/gitst-0.1.13-aarch64-apple-darwin.tar.gz"
      sha256 "d8da5404b3d28df22410b0e057608889b00b9d739662ba02eb91533bc0cd6c45"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.1.13/gitst-0.1.13-x86_64-apple-darwin.tar.gz"
      sha256 "c95e0eb89bb199eac61b6a56e9485e4f3c4cfc94118143221ed34a5c9c6989d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.1.13/gitst-0.1.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c9b88b6daa97561b7c7331db9601c02f895088577962d581845a07dd443c9cf5"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.1.13/gitst-0.1.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e8e8029e7ccd0ab70432d00404ebda5256daec1d6cab62e28e96dc5680368fc3"
    end
  end

  def install
    bin.install "gitst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitst --version")
  end
end
