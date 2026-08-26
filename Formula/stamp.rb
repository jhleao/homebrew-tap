class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  depends_on "pandoc"
  depends_on "tailwindcss"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.0.1/stamp_3.0.1_darwin_arm64.tar.gz"
      sha256 "634a26c77af824864761787fdf538602620d173453f29df6ad8d0894a73f12fd"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.0.1/stamp_3.0.1_darwin_amd64.tar.gz"
      sha256 "6a6ed74d2410e9789f05b0b6bb83382923dbcdc84adf242c1b3e25fc940301cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.0.1/stamp_3.0.1_linux_arm64.tar.gz"
      sha256 "acd94f8609ae3d49e257b6a6863f70e07620c4f8d45a759aee0b56766b0a06b8"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.0.1/stamp_3.0.1_linux_amd64.tar.gz"
      sha256 "ae771a23376d2551d4fc157f4cf7ceb9218135a974a72ef6c6161c5c14110bd6"
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
