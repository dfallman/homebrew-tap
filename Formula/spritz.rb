# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/spritz (.github/workflows/release.yml) on every tagged release.
class Spritz < Formula
  desc "Nano DLNA media server — run in any folder to share it on the LAN"
  homepage "https://github.com/dfallman/spritz"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/spritz/releases/download/v0.1.8/spritz-aarch64-apple-darwin.tar.xz"
      sha256 "fedc69ce048f68fbc811397bfdf4784241b158d5efc2646e71f036a2ab38a6da"
    else
      url "https://github.com/dfallman/spritz/releases/download/v0.1.8/spritz-x86_64-apple-darwin.tar.xz"
      sha256 "42a3a1bd18efddd83cf25c80cef18aa08dc1071bfc692420eeeb94be06a7decf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/spritz/releases/download/v0.1.8/spritz-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "99764b3bf91cab96d88f303c9e939fb7dd018903a30282b56216d501e40f76d3"
    else
      url "https://github.com/dfallman/spritz/releases/download/v0.1.8/spritz-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "5c95a436f6dae5def334389b8aac6e11362a7934f1727788f5afb73e6478de7a"
    end
  end

  def install
    bin.install "spritz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spritz --version")
  end
end
