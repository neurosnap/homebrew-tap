class Zmx < Formula
  desc "Session persistence for terminal processes"
  homepage "https://github.com/neurosnap/zmx"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://zmx.sh/a/zmx-0.4.0-macos-aarch64.tar.gz"
      sha256 "5b9bfd7358e904f1b5238421ddf5a87ab1445f483cb8e29e3d46519922c4bd8a"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.4.0-macos-x86_64.tar.gz"
      sha256 "b8f7abf36e042ba61f1c5148f7cba27da811eea488b55ca4eeb88dae247beb52"
    end
  end

  on_linux do
    on_arm do
      url "https://zmx.sh/a/zmx-0.4.0-linux-aarch64.tar.gz"
      sha256 "c4d287e6fed0f1f3cfdbc192712269fded52339984a8556461aabdd6b9754ed7"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.4.0-linux-x86_64.tar.gz"
      sha256 "fae6d226b98f8dfeea0976ff2f9ef1632cf0e9fda4cb921d08f2ae9ebd95a378"
    end
  end

  def install
    bin.install "zmx"
  end

  test do
    assert_match "Usage: zmx", shell_output("#{bin}/zmx help")
  end
end
