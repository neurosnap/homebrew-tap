class Zmx < Formula
  desc "Session persistence for terminal processes"
  homepage "https://github.com/neurosnap/zmx"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://zmx.sh/a/zmx-0.6.0-macos-aarch64.tar.gz"
      sha256 "621b85f25a1c73399e4ee46f482afc7cffb4638446e8d0eef5acaa57c2b79b4e"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.6.0-macos-x86_64.tar.gz"
      sha256 "bcc9097a592b0e1cce1f43979341a5f7d0eb7ca39de60078770737761023e046"
    end
  end

  on_linux do
    on_arm do
      url "https://zmx.sh/a/zmx-0.6.0-linux-aarch64.tar.gz"
      sha256 "da55aee752d54be60d36d9f4f9521bccb3770410c2b1771bec846d5a24b49bfe"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.6.0-linux-x86_64.tar.gz"
      sha256 "46e2b458f3247c117bc39e4eb959b58c4e5ec23fc62d776411e3dcb431bd2e3d"
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
