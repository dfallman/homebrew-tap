# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/gitst (.github/workflows/release.yml) on every tagged release.
class Gitst < Formula
  desc "Live, glanceable git status TUI for small terminal panes"
  homepage "https://github.com/dfallman/gitst"
  version "0.1.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.1.14/gitst-0.1.14-aarch64-apple-darwin.tar.gz"
      sha256 "15bd8fd6d68f64fe4305fc0dde80e4d044c57c7111e1b5dea1b65358144a8e23"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.1.14/gitst-0.1.14-x86_64-apple-darwin.tar.gz"
      sha256 "e2fe4c3f000aee1007cab5fee6cc7918ace9985b43ffcd2227513829c7a1321f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.1.14/gitst-0.1.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "87a57c3956ea82e669ed050601a204dd637cff9a830fe58222904d0acaec62de"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.1.14/gitst-0.1.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23c1ad839844a20d7883774d0ae85521d6faa1d2cf9348f9c0a49eff42e27307"
    end
  end

  def install
    bin.install "gitst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitst --version")
  end
end
