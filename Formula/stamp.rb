class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  depends_on "pandoc"
  depends_on "tailwindcss"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.6.2/stamp_3.6.2_darwin_arm64.tar.gz"
      sha256 "fd0caecb79d0c9ad3850c82473db5779c01b959dac145e8e75d8dd1975cfc4e2"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.6.2/stamp_3.6.2_darwin_amd64.tar.gz"
      sha256 "a333897447807543c12d21ff874182aca35981f6daa1633428b23c39abba5cf6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.6.2/stamp_3.6.2_linux_arm64.tar.gz"
      sha256 "f2c5d1aac506828acfffe82eb6ca595250d5cded12fb65e102194d9b8fff043a"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.6.2/stamp_3.6.2_linux_amd64.tar.gz"
      sha256 "54ac3bc60134c7fe37a785b3b31119ec9637df330c62923918c39a3fc32940d3"
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
