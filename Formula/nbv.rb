class Nbv < Formula
  desc "Fast terminal-native Jupyter notebook viewer"
  homepage "https://github.com/phd1000x-ux/nbv"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phd1000x-ux/nbv/releases/download/v0.4.3/nbv-v0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "133a6b65ab4c9356bcea206f90902a8ebc00a5b794d658a34f57d5890031e8cb"
    end
  end

  def install
    bin.install "nbv"
  end

  test do
    assert_match "nbv #{version}", shell_output("#{bin}/nbv --version")
  end
end
