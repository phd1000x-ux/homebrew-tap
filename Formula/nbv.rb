class Nbv < Formula
  desc "Fast terminal-native Jupyter notebook viewer"
  homepage "https://github.com/phd1000x-ux/nbv"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phd1000x-ux/nbv/releases/download/v0.7.0/nbv-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "d4a2f34a6da5505299de07d8d40af43f3cbdc5c06208a2a813f6630eae0d1557"
    end
  end

  def install
    bin.install "nbv"
  end

  test do
    assert_match "nbv #{version}", shell_output("#{bin}/nbv --version")
  end
end
