class Signals < Formula
  desc "Filter banks, wavelets and Toeplitz matrices with a terminal interface"
  homepage "https://github.com/VIA-s-acc/SignalProc"
  version "0.9.0"
  license "MIT"

  on_macos do
    url "https://github.com/VIA-s-acc/SignalProc/releases/download/v0.9.0/signals-v0.9.0-macos-universal.tar.gz"
    sha256 "e7e952fd8fd2ea99c6119145bbf829416f56f770aa48cf998714147cb03620f1"
  end

  on_linux do
    on_intel do
      url "https://github.com/VIA-s-acc/SignalProc/releases/download/v0.9.0/signals-v0.9.0-linux-x86_64.tar.gz"
      sha256 "8b1129df13abd27b8b8566c3e003011d19f192341fd4bb35555a0a8011c840df"
    end
  end

  def install
    bin.install "signals"
    man1.install "man/signals.1"
    bash_completion.install "completions/signals.bash" => "signals"
    zsh_completion.install "completions/_signals"
    fish_completion.install "completions/signals.fish"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/signals --version")
    system bin/"signals", "check"
  end
end
