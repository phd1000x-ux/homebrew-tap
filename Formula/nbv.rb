class Nbv < Formula
  desc "Fast terminal-native Jupyter notebook viewer"
  homepage "https://github.com/phd1000x-ux/nbv"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phd1000x-ux/nbv/releases/download/v0.6.3/nbv-v0.6.3-aarch64-apple-darwin.tar.gz"
      sha256 "7ca10c2ac20872be7ef214f06f559f0f38e2d8614e44a3d0103b586b5b427014"
    end
  end

  def install
    bin.install "nbv"
  end

  test do
    assert_match "nbv #{version}", shell_output("#{bin}/nbv --version")
  end
end
