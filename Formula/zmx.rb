class Zmx < Formula
  desc "Session persistence for terminal processes"
  homepage "https://github.com/neurosnap/zmx"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://zmx.sh/a/zmx-0.5.0-macos-aarch64.tar.gz"
      sha256 "3b9379f0ff0cf107f7f87048d2c45f6fbeabed588d676ad86ac218bed928d107"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.5.0-macos-x86_64.tar.gz"
      sha256 "776ee48efd50d0bd97b66fa4b4303a266295c0a0e163045b73ac66268d5781b6"
    end
  end

  on_linux do
    on_arm do
      url "https://zmx.sh/a/zmx-0.5.0-linux-aarch64.tar.gz"
      sha256 "ca8b976883bd6dd6a147d9140fd6f625ec2910cb3a7210821a4b2858d0fc9d5c"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.5.0-linux-x86_64.tar.gz"
      sha256 "4cc1f6b854dccdcabae4cb91bd0379a23e6f8210048af5d81e0661e594a50c28"
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
