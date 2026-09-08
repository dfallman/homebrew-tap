# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/dan (.github/workflows/release.yml) on every tagged release.
class Dan < Formula
  desc "Fast, friendly, zero-fuss terminal text editor"
  homepage "https://github.com/dfallman/dan"
  version "0.3.13"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/dan/releases/download/0.3.13/dan-0.3.13-aarch64-apple-darwin.tar.gz"
      sha256 "17b7956d96eca7bae42d5b09ff8ab8ea480b7f87781fe207fd45d8a88ff2b43b"
    else
      url "https://github.com/dfallman/dan/releases/download/0.3.13/dan-0.3.13-x86_64-apple-darwin.tar.gz"
      sha256 "93a85b94e07cb1bd77227d0cc32c583b4a891a8e56aeb2fcd81cec5cefa28f6f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/dan/releases/download/0.3.13/dan-0.3.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b2470fb23e145ea7ed4496378214e17e4dc17eeb2ea2f785e494e935bee45a90"
    else
      url "https://github.com/dfallman/dan/releases/download/0.3.13/dan-0.3.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e705693c370d32df0aae416b6edee7da87d45a8cba8722332719bda280134549"
    end
  end

  def install
    bin.install "dan"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dan --version")
  end
end
