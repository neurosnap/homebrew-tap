class Zmx < Formula
  desc "Session attach/detach for the terminal"
  homepage "https://github.com/neurosnap/zmx"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://zmx.sh/a/zmx-0.8.1-macos-aarch64.tar.gz"
      sha256 "1d86b1c9fba47fa707a6f0e976b20510b07c1c26d0ed010b9414b2a2c5e6beef"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.8.1-macos-x86_64.tar.gz"
      sha256 "3208578ad91d8a62077772dc8a1369a92033d9e84169bac673ef8542b6ff9707"
    end
  end

  on_linux do
    on_arm do
      url "https://zmx.sh/a/zmx-0.8.1-linux-aarch64.tar.gz"
      sha256 "943eb44c812333fd450da12097521afd3339436e86f8c2ac618b905c4c9ece68"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.8.1-linux-x86_64.tar.gz"
      sha256 "dfd75720b942466f28870731cc86dbc07afa72fb8f3bd5eeb4ff707e4eecebe8"
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
