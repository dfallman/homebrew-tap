class Texttv < Formula
  desc "Render SVT Text-TV (Swedish teletext) pages in the terminal"
  homepage "https://github.com/dfallman/texttv"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dfallman/texttv/releases/download/v0.1.8/texttv-v0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "43c97c65af73f2edbf7de567de2c98628f312ab197d7dbe728b691a5a12a79d3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dfallman/texttv/releases/download/v0.1.8/texttv-v0.1.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "93946d5d172071f09f45438a2651d8eef5ee9ffab26a69d4bd144a0bac44314a"
    end
  end

  def install
    bin.install "texttv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/texttv --version")
  end
end
