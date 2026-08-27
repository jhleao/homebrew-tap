class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  depends_on "pandoc"
  depends_on "tailwindcss"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.2.0/stamp_3.2.0_darwin_arm64.tar.gz"
      sha256 "728bc2591816eb86c53336e2e4d6482e2e0f72cf0256b74171539e7c37e89cfb"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.2.0/stamp_3.2.0_darwin_amd64.tar.gz"
      sha256 "570d7bfc8e9a4b43e8f81763a8d5e60dac2b4c1252e171fbc2acb4b25977f955"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.2.0/stamp_3.2.0_linux_arm64.tar.gz"
      sha256 "4074db64ac8ec13546e6fa6c79072d4a40bb03d523b30a0530116ea5a6f6fda6"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.2.0/stamp_3.2.0_linux_amd64.tar.gz"
      sha256 "00fe77c4239de9ed9782c35c370b4af492d1a93469532a69fe48b069a7dc410c"
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
