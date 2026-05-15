class Nbv < Formula
  desc "Fast terminal-native Jupyter notebook viewer"
  homepage "https://github.com/phd1000x-ux/nbv"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phd1000x-ux/nbv/releases/download/v0.4.1/nbv-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "6d35fe166a333d929914ffe40057bd5da2d9235ccd43744b3200393d24151d90"
    end
  end

  def install
    bin.install "nbv"
  end

  test do
    assert_match "nbv #{version}", shell_output("#{bin}/nbv --version")
  end
end
