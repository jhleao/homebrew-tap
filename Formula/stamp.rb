class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  depends_on "pandoc"
  depends_on "tailwindcss"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v2.4.2/stamp_2.4.2_darwin_arm64.tar.gz"
      sha256 "5ab470bc4b59b2d6626dfc4fe26d7f91a74a41465aae9c1d0f3438fd9451b367"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v2.4.2/stamp_2.4.2_darwin_amd64.tar.gz"
      sha256 "5a7ef8fc826da917235792dc055df0cb10a26f7527dbb617e0ba40f0248d4365"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v2.4.2/stamp_2.4.2_linux_arm64.tar.gz"
      sha256 "68119dc090736e9034154fe2dfff90d8e9078c2cdc33801ab8d02911b2ed80b3"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v2.4.2/stamp_2.4.2_linux_amd64.tar.gz"
      sha256 "6f21a28f6853bce1ec9844dd2aa825f6deca9f0a8867d9137f96ec5f3bcff116"
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
