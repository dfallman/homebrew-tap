# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/spritz (.github/workflows/release.yml) on every tagged release.
class Spritz < Formula
  desc "Nano DLNA media server — run in any folder to share it on the LAN"
  homepage "https://github.com/dfallman/spritz"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/spritz/releases/download/v0.1.9/spritz-aarch64-apple-darwin.tar.xz"
      sha256 "9e1c01f353138ddc3e5ec0aaf505421a8fdd7e2383f4fa41596f625a359b1b34"
    else
      url "https://github.com/dfallman/spritz/releases/download/v0.1.9/spritz-x86_64-apple-darwin.tar.xz"
      sha256 "473cce90fc6ff516f999c869230fbd8f92481d35d4289fb0004874a5172f89cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/spritz/releases/download/v0.1.9/spritz-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "2c6c1af8ea2cde81683b270812302ccd055efb4948ba6e3bbd90df107b928cfd"
    else
      url "https://github.com/dfallman/spritz/releases/download/v0.1.9/spritz-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "1dff9da8241a3c5dea09808573399559671cabb10d673a356d3024dccdaa1136"
    end
  end

  def install
    bin.install "spritz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spritz --version")
  end
end
