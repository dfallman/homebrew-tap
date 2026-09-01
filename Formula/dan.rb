# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/dan (.github/workflows/release.yml) on every tagged release.
class Dan < Formula
  desc "Fast, friendly, zero-fuss terminal text editor"
  homepage "https://github.com/dfallman/dan"
  version "0.3.12"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/dan/releases/download/0.3.12/dan-0.3.12-aarch64-apple-darwin.tar.gz"
      sha256 "72eba3ea0478ad33239d6eda959605dd3cb76c313c9d57329d9b2838b1afee28"
    else
      url "https://github.com/dfallman/dan/releases/download/0.3.12/dan-0.3.12-x86_64-apple-darwin.tar.gz"
      sha256 "f30fc0efd0172d1a44bb05b4f6c0c594b17aff18f3b37a80347ff3faf6df976c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/dan/releases/download/0.3.12/dan-0.3.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "64fabd23075b1e559522ef04a883591d9548dce757e8ca1bbf54a0be0a9f27e2"
    else
      url "https://github.com/dfallman/dan/releases/download/0.3.12/dan-0.3.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "06ae5b53a37e20b208d21dd783d7a23a4a75e2134b2d71d72d3be273b9aaa022"
    end
  end

  def install
    bin.install "dan"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dan --version")
  end
end
