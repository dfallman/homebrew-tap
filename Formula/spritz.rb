# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/spritz (.github/workflows/release.yml) on every tagged release.
class Spritz < Formula
  desc "Nano DLNA media server — run in any folder to share it on the LAN"
  homepage "https://github.com/dfallman/spritz"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/spritz/releases/download/v0.3.0/spritz-aarch64-apple-darwin.tar.xz"
      sha256 "c90b406ac8c4c3ea6f064ca10118d92077e905d978ddc408243ecb0100f1b3c3"
    else
      url "https://github.com/dfallman/spritz/releases/download/v0.3.0/spritz-x86_64-apple-darwin.tar.xz"
      sha256 "e178ef95616d48cae689b0e6947cbfa91acb8ff373ef1e6102588a93c9786deb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/spritz/releases/download/v0.3.0/spritz-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "cff67dd47d1cf3c59f3f32ba5cd6189d73b3c4ad7d2a58a870576d497e1d4d58"
    else
      url "https://github.com/dfallman/spritz/releases/download/v0.3.0/spritz-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "db8b4b6a214a56d31aa68bb020cf392a37e16be17afea5792b5aedebbb68ed38"
    end
  end

  def install
    bin.install "spritz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spritz --version")
  end
end
