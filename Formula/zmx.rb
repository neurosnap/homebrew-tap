class Zmx < Formula
  desc "Session persistence for terminal processes"
  homepage "https://github.com/neurosnap/zmx"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://zmx.sh/a/zmx-0.2.0-macos-aarch64.tar.gz"
      sha256 "9c68c22e6e21677a786bfe0b249bb24dcd75baa5d6817050a8cfbfe07c4087b4"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.2.0-macos-x86_64.tar.gz"
      sha256 "ff40545a5ceba4dd019561580039e6fee3efa4cf641199e8d1c639609eef054b"
    end
  end

  on_linux do
    on_arm do
      url "https://zmx.sh/a/zmx-0.2.0-linux-aarch64.tar.gz"
      sha256 "22110feff5a5e3f1c44f4c55b2beaef8f5200bfabc4d946a9dc836bc210e11e7"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.2.0-linux-x86_64.tar.gz"
      sha256 "3da72558e8106109b1cf5b47fb0522549afc0e4be1cab531857a8e45907deeea"
    end
  end

  def install
    bin.install "zmx"
  end

  test do
    assert_match "Usage: zmx", shell_output("#{bin}/zmx help")
  end
end
