# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/dan (.github/workflows/release.yml) on every tagged release.
class Dan < Formula
  desc "Fast, friendly, zero-fuss terminal text editor"
  homepage "https://github.com/dfallman/dan"
  version "0.5.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/dan/releases/download/0.5.0/dan-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "0e23696baae42c025e6873912a220c8abac07d6aab2293abaa442b4c35738504"
    else
      url "https://github.com/dfallman/dan/releases/download/0.5.0/dan-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "4ba6d07eb77122e0e7f1dac39c5d9898fd07e4293a75b0b2955cc6fba0382d51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/dan/releases/download/0.5.0/dan-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e03525585afef77b419fe3878ec83d1e75bfbb1f72c28a0e7a50de205672263d"
    else
      url "https://github.com/dfallman/dan/releases/download/0.5.0/dan-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "32363d9d10debae05eef80935e9b5ded040819cfc9e88244f69173be8f75d273"
    end
  end

  def install
    bin.install "dan"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dan --version")
  end
end
