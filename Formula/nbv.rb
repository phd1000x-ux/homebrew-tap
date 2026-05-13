class Nbv < Formula
  desc "Fast terminal-native Jupyter notebook viewer"
  homepage "https://github.com/phd1000x-ux/nbv"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phd1000x-ux/nbv/releases/download/v0.1.3/nbv-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "71117d9adf2e5581fa94eaeac946a2094f5d915b63fcbbb1caa7a1ebaafe3b44"
    end
  end

  def install
    bin.install "nbv"
  end

  test do
    assert_match "nbv #{version}", shell_output("#{bin}/nbv --version")
  end
end
