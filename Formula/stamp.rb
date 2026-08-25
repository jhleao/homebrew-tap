class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  depends_on "pandoc"
  depends_on "tailwindcss"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v2.2.1/stamp_2.2.1_darwin_arm64.tar.gz"
      sha256 "e49ec5306848c953ef2265af02582a6aac5834215feb0a5e96054b3e07a1efef"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v2.2.1/stamp_2.2.1_darwin_amd64.tar.gz"
      sha256 "9c318b40208ecde580f0d5c7c4abe873d41eb5ea5c8b45039247b1913f0a42e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v2.2.1/stamp_2.2.1_linux_arm64.tar.gz"
      sha256 "7ab1d030d0731f61e98dcd888bacada402b699f7e27b475cf1a5939216867c38"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v2.2.1/stamp_2.2.1_linux_amd64.tar.gz"
      sha256 "1605b978dcd509023ff786cd51bb8d4382d8507495833c84cc7deb33dd1563bf"
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
