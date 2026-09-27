# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/gitst (.github/workflows/release.yml) on every tagged release.
class Gitst < Formula
  desc "Live, glanceable git status TUI for small terminal panes"
  homepage "https://github.com/dfallman/gitst"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.1.1/gitst-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "4666fbce08f1c2f76609dc98473f528734ec729b1a8f920748279fcc8dcb42a6"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.1.1/gitst-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "3ae65b28eab2180ab7b52cdfe53d0d5bb28fc1f636310bf58ab015989812c3ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.1.1/gitst-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "20739eaa28d3242c5b5db5c4daed634ae303ad5d3901b53f389977990ceba704"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.1.1/gitst-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f9ceaa90811414f899f927e1a4e7b506dc8cc48566a3364c145f4aff4360e1d"
    end
  end

  def install
    bin.install "gitst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitst --version")
  end
end
