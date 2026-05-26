class Nbv < Formula
  desc "Fast terminal-native Jupyter notebook viewer"
  homepage "https://github.com/phd1000x-ux/nbv"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phd1000x-ux/nbv/releases/download/v0.5.1/nbv-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "be5cf25996d1222da0f6fb5c756ee27fb91c517d3cbf4e8c9797e05ebd6ef3c2"
    end
  end

  def install
    bin.install "nbv"
  end

  test do
    assert_match "nbv #{version}", shell_output("#{bin}/nbv --version")
  end
end
