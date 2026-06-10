class Nbv < Formula
  desc "Fast terminal-native Jupyter notebook viewer"
  homepage "https://github.com/phd1000x-ux/nbv"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phd1000x-ux/nbv/releases/download/v0.6.4/nbv-v0.6.4-aarch64-apple-darwin.tar.gz"
      sha256 "4493ec24b102114af99cf4a1070575a7e126c9bc811bcc512cbc2c6d1d0805e5"
    end
  end

  def install
    bin.install "nbv"
  end

  test do
    assert_match "nbv #{version}", shell_output("#{bin}/nbv --version")
  end
end
