# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/bupr (.github/workflows/release.yml) on every tagged release.
class Bupr < Formula
  desc "Preset-based mirror backups for macOS"
  homepage "https://github.com/dfallman/bupr"
  version "0.1.1"
  license "MIT"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/bupr/releases/download/v0.1.1/bupr-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "6c7f8c48a52e410581a1bd32f196e31857cb14dfe5dd2983cb102a81edfde578"
    else
      url "https://github.com/dfallman/bupr/releases/download/v0.1.1/bupr-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "6ea192086862560384219ff9dbdc4c91f3873febe6aa0f73d0d1b3edc02bde29"
    end
  end

  def install
    bin.install "bupr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bupr --version")
  end
end
