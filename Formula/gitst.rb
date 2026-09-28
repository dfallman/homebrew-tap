# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/gitst (.github/workflows/release.yml) on every tagged release.
class Gitst < Formula
  desc "Live, glanceable git status TUI for small terminal panes"
  homepage "https://github.com/dfallman/gitst"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.1.6/gitst-0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "0133d474c40a5586e6e579d103d4d9e3b5b237163929d95d674d6d68a4def86f"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.1.6/gitst-0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "6fe3de6b19b81bccf1091f62a25e6cfe3b970bad89fa4b1ac20fd6fb34b3c3b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.1.6/gitst-0.1.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "404fdd5daec70ca4bf50bc117f3f41c2b22ada3b4dc98034975bd9b75f7b252c"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.1.6/gitst-0.1.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "83777edff260d09444a1bb192c4977760adc892f1b9fc8f36c47e9b8899c13b8"
    end
  end

  def install
    bin.install "gitst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitst --version")
  end
end
