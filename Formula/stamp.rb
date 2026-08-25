class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  depends_on "pandoc"
  depends_on "tailwindcss"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v2.4.3/stamp_2.4.3_darwin_arm64.tar.gz"
      sha256 "c393196e6850f28468ec6d49d772bfb582cb0bc0dbdf485a2f8d04b7b34e8b6e"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v2.4.3/stamp_2.4.3_darwin_amd64.tar.gz"
      sha256 "8f28370189d4a34c7f127bfaf3407abd6dcb4de9e9467e65ea8dca81bbe3cedc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v2.4.3/stamp_2.4.3_linux_arm64.tar.gz"
      sha256 "5b0325bd002d5cf7867c8b5f8f00de4e787ef467a4d2163db8779b4138869d0b"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v2.4.3/stamp_2.4.3_linux_amd64.tar.gz"
      sha256 "1ef6d8215656f3812d00c256638e36b7698c6a010f12146ea168e4e73cbd3243"
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
