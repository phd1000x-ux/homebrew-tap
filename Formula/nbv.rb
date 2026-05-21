class Nbv < Formula
  desc "Fast terminal-native Jupyter notebook viewer"
  homepage "https://github.com/phd1000x-ux/nbv"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phd1000x-ux/nbv/releases/download/v0.5.0/nbv-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "2aa02f884e9d7409319df360ec9caa0d783acfa140e5f135fa73d6f3eeee27b7"
    end
  end

  def install
    bin.install "nbv"
  end

  test do
    assert_match "nbv #{version}", shell_output("#{bin}/nbv --version")
  end
end
