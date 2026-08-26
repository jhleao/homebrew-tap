class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  depends_on "pandoc"
  depends_on "tailwindcss"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.0.0/stamp_3.0.0_darwin_arm64.tar.gz"
      sha256 "b61991a9b3125a73b6abea5e2d0a3ed218f118676cd96a3f317247fedfa2ecbf"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.0.0/stamp_3.0.0_darwin_amd64.tar.gz"
      sha256 "3e137328b71d719fca9c4637e417f0b6369594d66f682553674133730f3b364a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.0.0/stamp_3.0.0_linux_arm64.tar.gz"
      sha256 "0b0bfef4a67f7a73665eded2185a45212ea35728e9e66621f447a27c3b135d7a"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.0.0/stamp_3.0.0_linux_amd64.tar.gz"
      sha256 "4a985a3042be0cc313b6222f30cb3b14fa776e1e80d091c5953e8982cf5afeec"
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
