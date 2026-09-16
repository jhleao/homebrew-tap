class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  depends_on "pandoc"
  depends_on "tailwindcss"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.7.0/stamp_3.7.0_darwin_arm64.tar.gz"
      sha256 "ab365f077fdba386a7527b640553617fc44872d9d41e0a2a4eddbcdbab9b9465"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.7.0/stamp_3.7.0_darwin_amd64.tar.gz"
      sha256 "4716dc3ac562dfc58374e0e2c0241055c5f931627ca6b1506bb2a413d46781fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.7.0/stamp_3.7.0_linux_arm64.tar.gz"
      sha256 "b95824518f9cb1ec50e2b73ac192df16c8864e11687c4db9f8ee73c0fcce4b11"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.7.0/stamp_3.7.0_linux_amd64.tar.gz"
      sha256 "8a78c6f5564b7728a228c2393c34520902d4242ccdb605521dee9efb26bb76b0"
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
