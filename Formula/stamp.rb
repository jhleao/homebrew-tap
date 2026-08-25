class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  version "2.2.1"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v2.2.1/stamp_2.2.1_darwin_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v2.2.1/stamp_2.2.1_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v2.2.1/stamp_2.2.1_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v2.2.1/stamp_2.2.1_linux_amd64.tar.gz"
      sha256 ""
    end
  end

  depends_on "pandoc"
  depends_on "tailwindcss"

  def install
    bin.install Dir["stamp_*/stamp"].first
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
