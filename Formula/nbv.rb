class Nbv < Formula
  desc "Fast terminal-native Jupyter notebook viewer"
  homepage "https://github.com/phd1000x-ux/nbv"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phd1000x-ux/nbv/releases/download/v0.4.0/nbv-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "e3c3eee46d5aa01c74d781c416d6959aef2d8742e9e045e688b72ec5233e9fb2"
    end
  end

  def install
    bin.install "nbv"
  end

  test do
    assert_match "nbv #{version}", shell_output("#{bin}/nbv --version")
  end
end
