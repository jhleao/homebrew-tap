class Stamp < Formula
  desc "Turn Markdown, TSX components, and Tailwind themes into polished PDFs"
  homepage "https://github.com/jhleao/stamp"
  depends_on "pandoc"
  depends_on "tailwindcss"
  on_macos do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.6.0/stamp_3.6.0_darwin_arm64.tar.gz"
      sha256 "702dbb591119ad3dfc932154cba5f8461b90434d808bdad5eee77519301cb79f"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.6.0/stamp_3.6.0_darwin_amd64.tar.gz"
      sha256 "6501a4a6f5c1cdfa4a9fd0eb5eac6ee941b391e5684ee78fc531cd3425bee2f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jhleao/stamp/releases/download/v3.6.0/stamp_3.6.0_linux_arm64.tar.gz"
      sha256 "819b706a45db4133248414002c2583beeb6dc9d0c7d441735e016ce2573d71c3"
    end
    on_intel do
      url "https://github.com/jhleao/stamp/releases/download/v3.6.0/stamp_3.6.0_linux_amd64.tar.gz"
      sha256 "8c4a87bfa74eacbde2b4fcaa532b24c617c0b145311c50a69c44ba8df39cb3fa"
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
