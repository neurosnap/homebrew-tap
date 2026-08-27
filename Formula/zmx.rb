class Zmx < Formula
  desc "Session attach/detach for the terminal"
  homepage "https://github.com/neurosnap/zmx"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://zmx.sh/a/zmx-0.7.1-macos-aarch64.tar.gz"
      sha256 "86ce4c0eeb6b8448d058390fabe4a5aff323c4fc1e64ed578d48ab75a0f59a79"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.7.1-macos-x86_64.tar.gz"
      sha256 "ea4eb40b6d5b6b42525f26447254964e68f74766f6825841181b805cb944ab53"
    end
  end

  on_linux do
    on_arm do
      url "https://zmx.sh/a/zmx-0.7.1-linux-aarch64.tar.gz"
      sha256 "899f9dc743ef72dcdeab3072667c33f507247a960e5c4b7482da54fff7fdae09"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.7.1-linux-x86_64.tar.gz"
      sha256 "ec82d753e12537b79a76bce73399d57698e529f4744eb5a1a9bcfa6fda7c4b25"
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
