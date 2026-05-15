class Nbv < Formula
  desc "Fast terminal-native Jupyter notebook viewer"
  homepage "https://github.com/phd1000x-ux/nbv"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phd1000x-ux/nbv/releases/download/v0.3.1/nbv-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "6b754da9e159b56da89d62337114c315ba862e8f15e0ed74294ae5c03e8f3101"
    end
  end

  def install
    bin.install "nbv"
  end

  test do
    assert_match "nbv #{version}", shell_output("#{bin}/nbv --version")
  end
end
