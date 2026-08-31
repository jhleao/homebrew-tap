class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  depends_on "pandoc"
  depends_on "tailwindcss"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.4.1/stamp_3.4.1_darwin_arm64.tar.gz"
      sha256 "d51e42c601a231caa8a5dc7cf2f63d934dfc9e4b692acf28209bf719b1b95313"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.4.1/stamp_3.4.1_darwin_amd64.tar.gz"
      sha256 "04d6ba2a995042a43e81c2600760b941ad2b0ced5750955eeade9da042887059"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.4.1/stamp_3.4.1_linux_arm64.tar.gz"
      sha256 "a5195d70d46e03f909cb14e693c03ef22c237acb8375b39c31b4c8f0abda5bb0"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.4.1/stamp_3.4.1_linux_amd64.tar.gz"
      sha256 "a321824b779821136d268ea1a184030d890779b422a317f78ad7ed64545a783f"
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
