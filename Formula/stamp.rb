class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  depends_on "pandoc"
  depends_on "tailwindcss"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v2.4.0/stamp_2.4.0_darwin_arm64.tar.gz"
      sha256 "41865176bb70d0653de5f02688ad0f208b03e259369ec40ca7169715aa203bca"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v2.4.0/stamp_2.4.0_darwin_amd64.tar.gz"
      sha256 "2f424a4fcef1dbdcfebdda030515235a047d396ed98485c4f0b4cbb3f9c1367a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v2.4.0/stamp_2.4.0_linux_arm64.tar.gz"
      sha256 "ec2abf7306353cc301d978d84c6e8b796e7a9573fcf82209ed49a08f97fcc2be"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v2.4.0/stamp_2.4.0_linux_amd64.tar.gz"
      sha256 "98b7c9615adb6783246ca8ec746acf3599e81edcb39570000e262bbccebe1def"
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
