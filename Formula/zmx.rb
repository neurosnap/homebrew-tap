class Zmx < Formula
  desc "Session attach/detach for the terminal"
  homepage "https://github.com/neurosnap/zmx"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://zmx.sh/a/zmx-1.0.0-macos-aarch64.tar.gz"
      sha256 "d402b370bd2b9c35f1a3806e42d429cf18b1a81637dd24fa6a2a965c7f064969"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-1.0.0-macos-x86_64.tar.gz"
      sha256 "9e01c40aa17954b4304223914032c556be32a9bb91ad29d9bf116b66176d05ab"
    end
  end

  on_linux do
    on_arm do
      url "https://zmx.sh/a/zmx-1.0.0-linux-aarch64.tar.gz"
      sha256 "496392993e21bb66d35fa56e791c15e92fa920819a32be67a0c93aece196bb57"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-1.0.0-linux-x86_64.tar.gz"
      sha256 "a588132070c966d29b09541b9df2332d83417d6599c91dfa1792b3ef982c3194"
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
