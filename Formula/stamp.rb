class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  depends_on "pandoc"
  depends_on "tailwindcss"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.4.0/stamp_3.4.0_darwin_arm64.tar.gz"
      sha256 "9e404b5b5350a8787cf897fa2b8dfc9232f1f8d35e771be0d95d1145f9cbef79"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.4.0/stamp_3.4.0_darwin_amd64.tar.gz"
      sha256 "8fe3ae14345b97f8b2ce2eef7cb703fbd9cd358f7e4f20cb4cb743cd0f6364b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.4.0/stamp_3.4.0_linux_arm64.tar.gz"
      sha256 "6af6ef5a8ac56aa53791feeaecdbf9285bed728151f60e3840c63c935c8ed460"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.4.0/stamp_3.4.0_linux_amd64.tar.gz"
      sha256 "af0e2b8ba1c46bc61fe0a62f3391f02d0e222c8de17319c91b51e4cc072e2464"
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
