# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/gitst (.github/workflows/release.yml) on every tagged release.
class Gitst < Formula
  desc "Live, glanceable git status TUI for small terminal panes"
  homepage "https://github.com/dfallman/gitst"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.1.5/gitst-0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "d02b85b7bb258ccedb52647ad8a06b3eeb842d2fb5655f6c847fec2567afaf4e"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.1.5/gitst-0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "06621aa6c39e5519d5b0f2cd63b864c2eec858af9f014d97644df5baae12f699"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/gitst/releases/download/0.1.5/gitst-0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bdc88dffab4214f340130d17699d734cb91ba71b0549d929f55dfec141308b01"
    else
      url "https://github.com/dfallman/gitst/releases/download/0.1.5/gitst-0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b6f75b69005cecf1aa3a83a78be0fc2252b1a1155c7cf1b50ff7e267fc56bb8"
    end
  end

  def install
    bin.install "gitst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitst --version")
  end
end
