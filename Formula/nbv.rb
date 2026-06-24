class Nbv < Formula
  desc "Fast terminal-native Jupyter notebook viewer"
  homepage "https://github.com/phd1000x-ux/nbv"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phd1000x-ux/nbv/releases/download/v0.8.0/nbv-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "2c8ec45fac6de38c1b05fa3ae4aac606e9aca02a4063c60c7113e4e197b7108f"
    end
  end

  def install
    bin.install "nbv"
  end

  test do
    assert_match "nbv #{version}", shell_output("#{bin}/nbv --version")
  end
end
