class Zmx < Formula
  desc "Session attach/detach for the terminal"
  homepage "https://github.com/neurosnap/zmx"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://zmx.sh/a/zmx-0.7.0-macos-aarch64.tar.gz"
      sha256 "a63d6f3edd6d4b38240f8f81513e60e35a898ca520211112d7bc67f610f1f3eb"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.7.0-macos-x86_64.tar.gz"
      sha256 "66c57e7963c84881266f9f3acfdb36945c340c016a57061948517f3b303ca7d3"
    end
  end

  on_linux do
    on_arm do
      url "https://zmx.sh/a/zmx-0.7.0-linux-aarch64.tar.gz"
      sha256 "77599f66124694fae80bbb1d2fa0eafdb8c648b427a048cad90513ecf6136fc9"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.7.0-linux-x86_64.tar.gz"
      sha256 "8b8783d7b120c9ffd0acf4aee37969054dc0dfef3c4f3a4728d2efd35f2e97a0"
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
