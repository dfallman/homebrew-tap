# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/dan (.github/workflows/release.yml) on every tagged release.
class Dan < Formula
  desc "Fast, friendly, zero-fuss terminal text editor"
  homepage "https://github.com/dfallman/dan"
  version "0.4.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/dan/releases/download/0.4.0/dan-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "d7705b88939ec32d8f95526c33da3e1b8dbce78bd470baa642739461340d71fc"
    else
      url "https://github.com/dfallman/dan/releases/download/0.4.0/dan-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "8e0bf0eaaa76192c740a9f1d6b3c9248ea5351961eb1ff0f6e45941558ce17e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/dan/releases/download/0.4.0/dan-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4351f3253b3109e4f31f0be2aed96faaa0a16a2c9f985c06d3b293a2b6b6e248"
    else
      url "https://github.com/dfallman/dan/releases/download/0.4.0/dan-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "76e2ffda4b7207df46718acb0c83666d6b411776bd647907c7c976a37975826d"
    end
  end

  def install
    bin.install "dan"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dan --version")
  end
end
