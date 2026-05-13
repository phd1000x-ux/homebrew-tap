class Nbv < Formula
  desc "Fast terminal-native Jupyter notebook viewer"
  homepage "https://github.com/phd1000x-ux/nbv"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phd1000x-ux/nbv/releases/download/v0.2.0/nbv-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "b476f364b5b04cc2423b132778e5a050bf7510e5b7e7b863180c605fe848ebc6"
    end
  end

  def install
    bin.install "nbv"
  end

  test do
    assert_match "nbv #{version}", shell_output("#{bin}/nbv --version")
  end
end
