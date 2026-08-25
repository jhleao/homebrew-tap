class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  depends_on "pandoc"
  depends_on "tailwindcss"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v2.3.0/stamp_2.3.0_darwin_arm64.tar.gz"
      sha256 "235f7d24a18a745d9e7fd34f964b512d5dd7856464db1ded10d3a5d65e5af211"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v2.3.0/stamp_2.3.0_darwin_amd64.tar.gz"
      sha256 "b55a62da46885693baa3be63a2a3847b3b110e8c3887f55f4f46bd87aa9726a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v2.3.0/stamp_2.3.0_linux_arm64.tar.gz"
      sha256 "63eb464fcc003fd7d1bcd38689c6d317a7ec037af55f8f0d3aecf223aa497478"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v2.3.0/stamp_2.3.0_linux_amd64.tar.gz"
      sha256 "40fc6b5121aafbfe78bd43451c8f4704087172657ea930a5b1b826fc7e10a71f"
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
