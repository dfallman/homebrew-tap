# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/spritz (.github/workflows/release.yml) on every tagged release.
class Spritz < Formula
  desc "Nano DLNA media server — run in any folder to share it on the LAN"
  homepage "https://github.com/dfallman/spritz"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/spritz/releases/download/v0.1.7/spritz-aarch64-apple-darwin.tar.xz"
      sha256 "3f97ff4f6280d4fd910a8b680dcc71fb7e56bdeaf15bf220e178b98e9856e758"
    else
      url "https://github.com/dfallman/spritz/releases/download/v0.1.7/spritz-x86_64-apple-darwin.tar.xz"
      sha256 "02fd1b871fe67bc406c4846decc876946db01dac8e830a77d4347035783d0e38"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/spritz/releases/download/v0.1.7/spritz-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "fc9cf6667ee428d3ad3e8dc163d10cb73379fd75d766f4df82f5127a73612900"
    else
      url "https://github.com/dfallman/spritz/releases/download/v0.1.7/spritz-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "61717cc14a1b03b32f1e31c135c1c60dd07002a87065f8494d69e2ab2577e627"
    end
  end

  def install
    bin.install "spritz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spritz --version")
  end
end
