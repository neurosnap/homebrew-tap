class Zmx < Formula
  desc "Session attach/detach for the terminal"
  homepage "https://github.com/neurosnap/zmx"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://zmx.sh/a/zmx-1.0.1-macos-aarch64.tar.gz"
      sha256 "eb062a16f6d2570958622523e9f8965d9dbb238fd417ad7be33d69025ddb661a"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-1.0.1-macos-x86_64.tar.gz"
      sha256 "12895201b7c8d2a01cf2f62a447d874943d664f0509753a2b099be59ab56ec0c"
    end
  end

  on_linux do
    on_arm do
      url "https://zmx.sh/a/zmx-1.0.1-linux-aarch64.tar.gz"
      sha256 "868de83abc66dc59a5c864ecdef4d5cb763985eedf8b9c1099af9ce75e51fc6b"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-1.0.1-linux-x86_64.tar.gz"
      sha256 "47319ff9f330b65e14dc799517699d13c5f322820d08abecab99f8b18beaaa2d"
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
