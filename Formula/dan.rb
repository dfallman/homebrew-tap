# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/dan (.github/workflows/release.yml) on every tagged release.
class Dan < Formula
  desc "Fast, friendly, zero-fuss terminal text editor"
  homepage "https://github.com/dfallman/dan"
  version "0.5.1"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/dan/releases/download/0.5.1/dan-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "ed51d2b59abd9944bc0c2498e8d9781fdcae885df46a3d266c23c268ffa15639"
    else
      url "https://github.com/dfallman/dan/releases/download/0.5.1/dan-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "3994a3ed8c4e6fe30806a333a132d1007623a9817a32fe63e63bb35f80821b50"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/dan/releases/download/0.5.1/dan-0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5e48c46526bdcd8809a1d487af97a6983f8900922db58070e0317aa1e234cb8b"
    else
      url "https://github.com/dfallman/dan/releases/download/0.5.1/dan-0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d66af48ca17f8e7f17822d8314eea45b171dbac0954135aa8bd36a15cd4120f"
    end
  end

  def install
    bin.install "dan"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dan --version")
  end
end
