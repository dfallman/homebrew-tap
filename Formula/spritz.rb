# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/spritz (.github/workflows/release.yml) on every tagged release.
class Spritz < Formula
  desc "Nano DLNA media server — run in any folder to share it on the LAN"
  homepage "https://github.com/dfallman/spritz"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/spritz/releases/download/v0.1.4/spritz-aarch64-apple-darwin.tar.xz"
      sha256 "d8be32b9f01bddb9ae314aca71c0c7dfd91221c697bd8cff701ed518cf3c0e88"
    else
      url "https://github.com/dfallman/spritz/releases/download/v0.1.4/spritz-x86_64-apple-darwin.tar.xz"
      sha256 "d558812e179dd5e896de3939b564e8c4df7af93baef4584102b219c086154fe4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/spritz/releases/download/v0.1.4/spritz-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "2247a590092a2aa1dab0d18c9e0ed1f25a607219bdcdc05cefc4eedc82907f07"
    else
      url "https://github.com/dfallman/spritz/releases/download/v0.1.4/spritz-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "fa366bf577d4ad414fbaf338e7a03ca549c0b30d64f1212842ca2719a42629f6"
    end
  end

  def install
    bin.install "spritz"
  end

  test do
    # v0.1.4 predates the --version flag; later formulae are regenerated
    # by CI with a version check.
    assert_match "DLNA", shell_output("#{bin}/spritz --help")
  end
end
