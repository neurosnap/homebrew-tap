class Zmx < Formula
  desc "Session persistence for terminal processes"
  homepage "https://github.com/neurosnap/zmx"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://zmx.sh/a/zmx-0.1.0-macos-aarch64.tar.gz"
      sha256 "74ce8c16291d6e937e9fc04ae9f2dbcf225f8bcf317ad0962fd1f955f181d3ba"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.1.0-macos-x86_64.tar.gz"
      sha256 "079d8d0bc3448d53c33521b5d6a3dbd2e44d13107ae9b9659caee2bd73096c79"
    end
  end

  on_linux do
    on_arm do
      url "https://zmx.sh/a/zmx-0.1.0-linux-aarch64.tar.gz"
      sha256 "b2ff37951e032c913e82c32da8293a54215da399f89612343f5968c407f488e8"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.1.0-linux-x86_64.tar.gz"
      sha256 "73ec0251c9bb0c43b9e705ee1ead1a3f42a7f74f238f514ce59f894099ca1343"
    end
  end

  def install
    bin.install "zmx"
  end

  test do
    assert_match "Usage: zmx", shell_output("#{bin}/zmx help")
  end
end
