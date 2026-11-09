class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  depends_on "pandoc"
  depends_on "tailwindcss"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.7.2/stamp_3.7.2_darwin_arm64.tar.gz"
      sha256 "57e8f2ddbed74cec79000750209b0fb91010363da75266d32620c0a465fe903e"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.7.2/stamp_3.7.2_darwin_amd64.tar.gz"
      sha256 "57144f7a974508e0e92df71532584d8401931d0b114870044ea435839f385216"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.7.2/stamp_3.7.2_linux_arm64.tar.gz"
      sha256 "2cbe964496278f0e5b7beeba5d9009ca93e30fbce12ebb9c23bb9a07a7cc574c"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.7.2/stamp_3.7.2_linux_amd64.tar.gz"
      sha256 "2116a91b0fdb4569c81025d735ee7f964955db3a153ea7308d92344bc0591dfd"
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
