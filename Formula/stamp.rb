class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  depends_on "pandoc"
  depends_on "tailwindcss"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.6.1/stamp_3.6.1_darwin_arm64.tar.gz"
      sha256 "b5cddc398250264c5866a8d545bf574990af40371541227b11619c2546adedea"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.6.1/stamp_3.6.1_darwin_amd64.tar.gz"
      sha256 "a63c5a5c13cdcecd2923271f77fcb524b98c260e7afd7d9b5cb32b25e20245b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.6.1/stamp_3.6.1_linux_arm64.tar.gz"
      sha256 "76d665a250e75590e88cb0e5323cec2a25fc3476e3dfb306263ca2974a221c6e"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.6.1/stamp_3.6.1_linux_amd64.tar.gz"
      sha256 "bca4d7a034c5eb4fa374f097570ff5d7b187c7b1dc156295a1100871339ea4f5"
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
