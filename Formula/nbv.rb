class Nbv < Formula
  desc "Fast terminal-native Jupyter notebook viewer"
  homepage "https://github.com/phd1000x-ux/nbv"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phd1000x-ux/nbv/releases/download/v0.6.2/nbv-v0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "ae27208838bd50fc32fa68e38b34903d5f47fcc17348fbd7f8d423b0aac30236"
    end
  end

  def install
    bin.install "nbv"
  end

  test do
    assert_match "nbv #{version}", shell_output("#{bin}/nbv --version")
  end
end
