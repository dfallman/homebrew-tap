# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/gitst (.github/workflows/release.yml) on every tagged release.
class Gitst < Formula
  desc "Live, glanceable git status TUI for small terminal panes"
  homepage "https://github.com/dfallman/gitst"
  version "0.1.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.1.16/gitst-0.1.16-aarch64-apple-darwin.tar.gz"
      sha256 "42b84b131e14b864af7552fdf8d839412a3c759b2dd250e7c19ab03f50a818c6"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.1.16/gitst-0.1.16-x86_64-apple-darwin.tar.gz"
      sha256 "062d1c4f44a4bbf0a57f080bdef9cbd838ba15a031fef43b861f54eb011287ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.1.16/gitst-0.1.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d03d8c04c3f4c46728935d88ce71251ad6e625a5f025bf672482097937d51b73"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.1.16/gitst-0.1.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e143f11acc6eb2b512ff0e332d1e47f60d7bd6e25c1b323d785b14e642abda6"
    end
  end

  def install
    bin.install "gitst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitst --version")
  end
end
