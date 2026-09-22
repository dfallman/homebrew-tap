# typed: false
# frozen_string_literal: true

# This formula is regenerated automatically by the release workflow in
# dfallman/texttv (.github/workflows/release.yml) on every tagged release.
class Texttv < Formula
  desc "Render SVT Text-TV (Swedish teletext) pages in the terminal"
  homepage "https://github.com/dfallman/texttv"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/texttv/releases/download/v0.1.10/texttv-v0.1.10-aarch64-apple-darwin.tar.gz"
      sha256 "6cf282413f7504ee601a52235f86da603add77c0747b948e512f961a047e1d7b"
    else
      url "https://github.com/dfallman/texttv/releases/download/v0.1.10/texttv-v0.1.10-x86_64-apple-darwin.tar.gz"
      sha256 "d5053d5b854aa4cb830d7127a7d1ef111fea8fb1bac8403b8737cef1d15be791"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dfallman/texttv/releases/download/v0.1.10/texttv-v0.1.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "78e3ccbe4ceb4030f476932b0545a9d422277ecb9bae164ac555aba4129127f4"
    else
      url "https://github.com/dfallman/texttv/releases/download/v0.1.10/texttv-v0.1.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd14690f1a90e45a7925c798fc5a4a2ed9be7171cb49d84101c8d4e17add4aa6"
    end
  end

  def install
    bin.install "texttv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/texttv --version")
  end
end
