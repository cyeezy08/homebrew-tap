class Fenrir < Formula
  desc "WordPress component observation and local advisory correlation"
  homepage "https://github.com/cyeezy08/FenrirLVX"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leviathan-offsec/FenrirLVX/releases/download/v0.1.0/fenrir-darwin-arm64"
      sha256 "3b0c6bd46cf11d25536920e0908bccb0f7f8206c82bb32158d2105bc6a3a57d4"
    else
      url "https://github.com/leviathan-offsec/FenrirLVX/releases/download/v0.1.0/fenrir-darwin-amd64"
      sha256 "257bbd878e4a50e72207f38a28539a0de27308fe9ead8abd1b4b715ed590e999"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leviathan-offsec/FenrirLVX/releases/download/v0.1.0/fenrir-linux-arm64"
      sha256 "e7260467538fd5468319a6e5ca8af7f00e1ae6403650131380d5bb8a645854cb"
    else
      url "https://github.com/leviathan-offsec/FenrirLVX/releases/download/v0.1.0/fenrir-linux-amd64"
      sha256 "bbb3176f17b7dfff9d794b9abec12abcdf8a3d7325f3c84e10c71ffb89f166ad"
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "fenrir-darwin-arm64" => "fenrir"
    elsif OS.mac? && !Hardware::CPU.arm?
      bin.install "fenrir-darwin-amd64" => "fenrir"
    elsif OS.linux? && Hardware::CPU.arm?
      bin.install "fenrir-linux-arm64" => "fenrir"
    elsif OS.linux? && !Hardware::CPU.arm?
      bin.install "fenrir-linux-amd64" => "fenrir"
    end
  end

  test do
    system "#{bin}/fenrir", "--help"
  end
end
