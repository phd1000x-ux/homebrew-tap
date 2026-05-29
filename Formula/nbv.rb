class Nbv < Formula
  desc "Fast terminal-native Jupyter notebook viewer"
  homepage "https://github.com/phd1000x-ux/nbv"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phd1000x-ux/nbv/releases/download/v0.6.0/nbv-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "317e39efb5bdaed8219ec661a75f6a61017218b568872c5e24e4ce073de50a22"
    end
  end

  def install
    bin.install "nbv"
  end

  test do
    assert_match "nbv #{version}", shell_output("#{bin}/nbv --version")
  end
end
