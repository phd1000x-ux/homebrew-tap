class Nbv < Formula
  desc "Fast terminal-native Jupyter notebook viewer"
  homepage "https://github.com/phd1000x-ux/nbv"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phd1000x-ux/nbv/releases/download/v0.6.1/nbv-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "27e13d597f9b4db1124bb1e26b73104d5549f303b0d1775901003df917a0c2b4"
    end
  end

  def install
    bin.install "nbv"
  end

  test do
    assert_match "nbv #{version}", shell_output("#{bin}/nbv --version")
  end
end
