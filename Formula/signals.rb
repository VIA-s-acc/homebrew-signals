class Signals < Formula
  desc "Filter banks, wavelets and Toeplitz matrices with a terminal interface"
  homepage "https://github.com/VIA-s-acc/SignalProc"
  version "0.8.0"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VIA-s-acc/SignalProc/releases/download/v0.8.0/signals-v0.8.0-macos-arm64.tar.gz"
      sha256 "15575d5efdb0843de7adb43818dd9c151ec0b15e6db0a1f5437f00bf755d894c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/VIA-s-acc/SignalProc/releases/download/v0.8.0/signals-v0.8.0-linux-x86_64.tar.gz"
      sha256 "4917679dcbfbb0924908e778ef3725208b76e8c6e13d3dbd7d34014bc4d01ffc"
    end
  end

  def install
    bin.install "signals"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/signals --version")
    system bin/"signals", "check"
  end
end
