class Zmx < Formula
  desc "Session persistence for terminal processes"
  homepage "https://github.com/neurosnap/zmx"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://zmx.sh/a/zmx-0.4.2-macos-aarch64.tar.gz"
      sha256 "57d4983a6ea7ed5c04b7879b90d434cc202dc0b637cac80ae7d5ae09b41eb160"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.4.2-macos-x86_64.tar.gz"
      sha256 "1ae9cd1be8baf5e51a69c8ba9156698a9f833e089116642811b85a444e2627c7"
    end
  end

  on_linux do
    on_arm do
      url "https://zmx.sh/a/zmx-0.4.2-linux-aarch64.tar.gz"
      sha256 "2e3fc2a6257408626634480e5a684cc24e72b34f813d08b008a359f950efca3b"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.4.2-linux-x86_64.tar.gz"
      sha256 "2523d29006e8e0d768c80f403cad2944e90d58cba3f68a91277b0b80d0c1f237"
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
