class Nbv < Formula
  desc "Fast terminal-native Jupyter notebook viewer"
  homepage "https://github.com/phd1000x-ux/nbv"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phd1000x-ux/nbv/releases/download/v0.7.1/nbv-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "66ec35f12d6d4f019cbf29b77803960b3ded6c8eb2a7fa8075b9a012c9d14a39"
    end
  end

  def install
    bin.install "nbv"
  end

  test do
    assert_match "nbv #{version}", shell_output("#{bin}/nbv --version")
  end
end
