class Nbv < Formula
  desc "Fast terminal-native Jupyter notebook viewer"
  homepage "https://github.com/phd1000x-ux/nbv"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phd1000x-ux/nbv/releases/download/v0.4.2/nbv-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "d4193b58dc5b14e987738a9d25114543580d68ffae3043ccf7947a148066c363"
    end
  end

  def install
    bin.install "nbv"
  end

  test do
    assert_match "nbv #{version}", shell_output("#{bin}/nbv --version")
  end
end
