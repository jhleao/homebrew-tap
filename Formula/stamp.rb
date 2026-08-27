class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  depends_on "pandoc"
  depends_on "tailwindcss"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.1.0/stamp_3.1.0_darwin_arm64.tar.gz"
      sha256 "7c7a6364d578b61436d2ed7d6d8efe2bad5368b66abbc0337c04b243aa9b1e2d"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.1.0/stamp_3.1.0_darwin_amd64.tar.gz"
      sha256 "ea968c7607f3562e6a18e6640e961d6c69cadcf0c36cbd7c8bc508070ca258b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.1.0/stamp_3.1.0_linux_arm64.tar.gz"
      sha256 "5fd7eb6b8bf259e292ebdd86a9b9a73c3294125bbba6f14e4598d30147bb7192"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.1.0/stamp_3.1.0_linux_amd64.tar.gz"
      sha256 "d7a39b3ba62bab449017cff3ea9d9fe678a83d7b49bb7f5eae46de0219eb1264"
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
