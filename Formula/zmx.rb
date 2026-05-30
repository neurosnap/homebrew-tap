class Zmx < Formula
  desc "Session persistence for terminal processes"
  homepage "https://github.com/neurosnap/zmx"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://zmx.sh/a/zmx-0.6.0-macos-aarch64.tar.gz"
      sha256 "7f1e4d967d41dea0df76bc7c5dd0d5795e7e54fd657a5f0c74fbfb2c0699390e"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.6.0-macos-x86_64.tar.gz"
      sha256 "576cf81cd7df5354a49f328d0f3c571d5cf601e257eb6fb794890c79c7fb713e"
    end
  end

  on_linux do
    on_arm do
      url "https://zmx.sh/a/zmx-0.6.0-linux-aarch64.tar.gz"
      sha256 "dbbb3df7428bbe645cc26f34dd67b61b07953a8ce3daa6f3e501c49d392724f8"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.6.0-linux-x86_64.tar.gz"
      sha256 "7ee4b12150dd0d736d271ba1cb06942244c10b857841a663517297ac65c720dd"
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
