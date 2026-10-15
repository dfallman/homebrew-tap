# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/gitst (.github/workflows/release.yml) on every tagged release.
class Gitst < Formula
  desc "Live, glanceable git status TUI for small terminal panes"
  homepage "https://github.com/dfallman/gitst"
  version "0.1.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.1.15/gitst-0.1.15-aarch64-apple-darwin.tar.gz"
      sha256 "49c0b30a2a2d90fe67e3fe33b2f50f0aa91dd74fd8c57b98ba7f5b9a2eaee00d"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.1.15/gitst-0.1.15-x86_64-apple-darwin.tar.gz"
      sha256 "34440b98036bd816a9b87f9edb0d888eae3cf097956b4d793fa949118ecae2d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.1.15/gitst-0.1.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "541f29e195325674d9d1a4c976236fb592761896d433a7de14cec7c5d4155a6c"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.1.15/gitst-0.1.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2df7182091d25b0cac12d2f58da09f51ae55d5edd061c95c1820cfe5cf563f9b"
    end
  end

  def install
    bin.install "gitst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitst --version")
  end
end
