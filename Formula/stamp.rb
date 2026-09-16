class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  depends_on "pandoc"
  depends_on "tailwindcss"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.7.1/stamp_3.7.1_darwin_arm64.tar.gz"
      sha256 "70a0c1d1969dca28380072f4cfdd9f39acd7097bf46ff43e45d75c537ff3b697"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.7.1/stamp_3.7.1_darwin_amd64.tar.gz"
      sha256 "f884233b6efd44b5ca66ce0dab61780dd7d89c09157539253893110e8dc59930"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.7.1/stamp_3.7.1_linux_arm64.tar.gz"
      sha256 "3a0ed80e0a71b83242c266e91d23ec34b434efdc4cef5d8ae0d2b66caca5cb78"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.7.1/stamp_3.7.1_linux_amd64.tar.gz"
      sha256 "cc08143436feac86272f0362996a9122f5c074780aa42d4916490dc86c2c927f"
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
