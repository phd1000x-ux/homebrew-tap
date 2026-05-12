class Nbv < Formula
  desc "Fast terminal-native Jupyter notebook viewer"
  homepage "https://github.com/phd1000x-ux/nbv"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phd1000x-ux/nbv/releases/download/v#{version}/nbv-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e6e6c96d2658fdffc597cbe84895a3fb534cc5e37f9849352ffaacdc8707c5aa"
    end
  end

  def install
    bin.install "nbv"
  end

  test do
    assert_match "nbv #{version}", shell_output("#{bin}/nbv --version")
  end
end
