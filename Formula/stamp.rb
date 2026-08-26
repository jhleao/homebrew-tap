class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  depends_on "pandoc"
  depends_on "tailwindcss"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v2.5.0/stamp_2.5.0_darwin_arm64.tar.gz"
      sha256 "d7e7d4074a199cea5fd676c67b260cf28add4a15d1811430511659d085464218"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v2.5.0/stamp_2.5.0_darwin_amd64.tar.gz"
      sha256 "45e76a58f01cd4534f06a11972d9bdbe10fb970bb882c7b881b92dc68ded84d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v2.5.0/stamp_2.5.0_linux_arm64.tar.gz"
      sha256 "45da0f6d436522fc3ab089448ce118231412540a6d789a793a877140b0cd2224"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v2.5.0/stamp_2.5.0_linux_amd64.tar.gz"
      sha256 "bb582b9c348733309b63416dbab103d688f8a70df1726f9a6cccef7425bbe0da"
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
