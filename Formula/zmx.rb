class Zmx < Formula
  desc "Session attach/detach for the terminal"
  homepage "https://github.com/neurosnap/zmx"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://zmx.sh/a/zmx-0.8.0-macos-aarch64.tar.gz"
      sha256 "16efdbb1269b2ba2e8910797c5def01e20e30161a11831d8ec649b7d239cf32f"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.8.0-macos-x86_64.tar.gz"
      sha256 "7b0f27472cad59de1059c0c6e346905714f49fdb40b35f31ec498d58bbd4ad8a"
    end
  end

  on_linux do
    on_arm do
      url "https://zmx.sh/a/zmx-0.8.0-linux-aarch64.tar.gz"
      sha256 "09978ee2ee0813ed1f2979798b33da69b410c6e356888345e04f957f7487fd13"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.8.0-linux-x86_64.tar.gz"
      sha256 "cd928e56fc5d2f1d71b1aa5d0e2ea39c96d4aea77cd047260932874c98eac5cb"
    end
  end

  def install
    bin.install "zmx"
    generate_completions_from_executable(bin/"zmx", "completions")
  end

  test do
    assert_match "Usage: zmx", shell_output("#{bin}/zmx help")
  end
end
