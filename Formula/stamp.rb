class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  depends_on "pandoc"
  depends_on "tailwindcss"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.5.0/stamp_3.5.0_darwin_arm64.tar.gz"
      sha256 "4d911e7ed89ef2bba97d834acfde979140a4ad472d6798a6127401456463d449"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.5.0/stamp_3.5.0_darwin_amd64.tar.gz"
      sha256 "2de8003b05ded92533ccc418afccc50c2c4db63a6ec7dbffab4cc6055a13ba14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.5.0/stamp_3.5.0_linux_arm64.tar.gz"
      sha256 "2f688c35d1f20d32e42a93467e947ec4c52b6478b8fa797765b4afc306d411a6"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.5.0/stamp_3.5.0_linux_amd64.tar.gz"
      sha256 "ebebe311c07158ba3098a3aff851e1ca0956e4bca761fc317cdf5663d1eb7e66"
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
