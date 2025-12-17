class Zmx < Formula
  desc "Session persistence for terminal processes"
  homepage "https://github.com/neurosnap/zmx"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://zmx.sh/a/zmx-0.1.1-macos-aarch64.tar.gz"
      sha256 "54fa55772dd6123bfb8ed02c0a106bc2e3566924438668b53faf017ec8435b5f"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.1.1-macos-x86_64.tar.gz"
      sha256 "8450a70c1b60f5dad3f7cf18b996805afa3b7b8ed67d81ca67432ba2915c1734"
    end
  end

  on_linux do
    on_arm do
      url "https://zmx.sh/a/zmx-0.1.1-linux-aarch64.tar.gz"
      sha256 "e1eb631b8e1d056fa47ea9cca51021e7948744a5127b334e02ae7f127f6e8f7c"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.1.1-linux-x86_64.tar.gz"
      sha256 "0404446843cbebf9e842a35d63e13582036be9f568012641e2dad890c0bbaf4b"
    end
  end

  def install
    bin.install "zmx"
  end

  test do
    assert_match "Usage: zmx", shell_output("#{bin}/zmx help")
  end
end
