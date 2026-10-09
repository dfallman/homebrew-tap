# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/gitst (.github/workflows/release.yml) on every tagged release.
class Gitst < Formula
  desc "Live, glanceable git status TUI for small terminal panes"
  homepage "https://github.com/dfallman/gitst"
  version "0.1.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.1.12/gitst-0.1.12-aarch64-apple-darwin.tar.gz"
      sha256 "685a1edcdc6795b0b9e4269875c360fee3ce00a217a178cdc42ce613d67a7893"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.1.12/gitst-0.1.12-x86_64-apple-darwin.tar.gz"
      sha256 "9c2bc9db5d8c337105f5168fc8aa541ec22f05bc2352273002719f7444ba214d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.1.12/gitst-0.1.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "39481c68c1e7cc24d0e4ba1f9618710802c553622e9f387ec43c4a7a9302213b"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.1.12/gitst-0.1.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f78ef4b38512364fc68fb434a6f84471061f7e2929b9756c4d992589ddd5c7e2"
    end
  end

  def install
    bin.install "gitst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitst --version")
  end
end
