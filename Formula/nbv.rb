class Nbv < Formula
  desc "Fast terminal-native Jupyter notebook viewer"
  homepage "https://github.com/phd1000x-ux/nbv"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phd1000x-ux/nbv/releases/download/v0.8.1/nbv-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "2cf401531819b85e24c4a3e49288612643f4fc500d5b7393c49ae82de05800cc"
    end
  end

  def install
    bin.install "nbv"
  end

  test do
    assert_match "nbv #{version}", shell_output("#{bin}/nbv --version")
  end
end
