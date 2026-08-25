class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  depends_on "pandoc"
  depends_on "tailwindcss"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v2.4.1/stamp_2.4.1_darwin_arm64.tar.gz"
      sha256 "97409ca44ff09947bd92a1e5f6d2f45f04cc1ea57b9c9c9fd7b5c475b88b0558"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v2.4.1/stamp_2.4.1_darwin_amd64.tar.gz"
      sha256 "4fdac163e59e3e04306d49c4baf3e5d4f943c50a9bb2dd2e62abe0bf6ded8beb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v2.4.1/stamp_2.4.1_linux_arm64.tar.gz"
      sha256 "2b445f7df5b1040ae938b30e6b75d34782f005901bf858014e28019b46b16929"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v2.4.1/stamp_2.4.1_linux_amd64.tar.gz"
      sha256 "96cf7314adf465c581d25250d22c2093b524aeead8782d82bafe14684cfef144"
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
