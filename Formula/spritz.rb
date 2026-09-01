# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/spritz (.github/workflows/release.yml) on every tagged release.
class Spritz < Formula
  desc "Nano DLNA media server — run in any folder to share it on the LAN"
  homepage "https://github.com/dfallman/spritz"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/spritz/releases/download/v0.1.5/spritz-aarch64-apple-darwin.tar.xz"
      sha256 "b280e96de98ff6ea5c4865ef67534cfd525d13281ae199a744ea01cbb22409c0"
    else
      url "https://github.com/dfallman/spritz/releases/download/v0.1.5/spritz-x86_64-apple-darwin.tar.xz"
      sha256 "f1927b93b0d4bc6c22dac786be10e610f7213c9d3c19e05252c3006b9265e72b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/spritz/releases/download/v0.1.5/spritz-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "8558d72c6fd0a022b8cc8accfeb636cc6bb9fff5faa95e23ef995d0d268a0793"
    else
      url "https://github.com/dfallman/spritz/releases/download/v0.1.5/spritz-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "a168aba89374fffad955237151bd0f561666f1d503ecce56ef082d6896e60afd"
    end
  end

  def install
    bin.install "spritz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spritz --version")
  end
end
