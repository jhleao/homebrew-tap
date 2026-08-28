class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  depends_on "pandoc"
  depends_on "tailwindcss"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.3.0/stamp_3.3.0_darwin_arm64.tar.gz"
      sha256 "f16187839fef262b98366a9c8c120f86f4ace50a5681ce5edcdcfd352f71d7b2"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.3.0/stamp_3.3.0_darwin_amd64.tar.gz"
      sha256 "ec37345bab24f91968517aa8cf7e0664fbfe7c1c1399dbd2b69c0bd8abde9207"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.3.0/stamp_3.3.0_linux_arm64.tar.gz"
      sha256 "a70509cce3514ab7116bf8929e08475c88a4dfd4294c137abd832fda2d9989a8"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.3.0/stamp_3.3.0_linux_amd64.tar.gz"
      sha256 "6fba18de73c90a98154378fd8843e1a11695a8c621ae8b53a0038eaec6e6751c"
    end
  end

  def install
    bin.install "stamp"
  end

  def caveats
    <<~EOS
      Run stamp setup to install the remaining macOS authoring tools,
      connect Google Drive, and open your first project.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stamp version")
  end
end
