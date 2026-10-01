# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/bupr (.github/workflows/release.yml) on every tagged release.
class Bupr < Formula
  desc "Preset-based mirror backups for macOS"
  homepage "https://github.com/dfallman/bupr"
  version "0.1.2"
  license "MIT"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/bupr/releases/download/v0.1.2/bupr-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "fe7fef5769d62835143a7f79552bb9335ba1f3603d5e00b7d4c4003657211898"
    else
      url "https://github.com/dfallman/bupr/releases/download/v0.1.2/bupr-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "d21e5ed86cb466e51bbc2fb8c1ffb8aa96269340b5eff2ca4dbe58e4152f3e31"
    end
  end

  def install
    bin.install "bupr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bupr --version")
  end
end
