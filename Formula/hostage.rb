class Hostage < Formula
  desc "High-speed dangling DNS and subdomain takeover engine in Go"
  homepage "https://leviathan.ac"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leviathan-offsec/HostageLVX/releases/download/v0.3.0/hostage-darwin-arm64"
      sha256 "370516f62ce8a17ca6fd43011b12bc13f1a2b25f9c1e27a7f801632db7b76086"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leviathan-offsec/HostageLVX/releases/download/v0.3.0/hostage-linux-arm64"
      sha256 "dc63a4344237187c7a82319226f78b69dd4e6fa49ec1ee484a9a27c62729eb84"
    else
      url "https://github.com/leviathan-offsec/HostageLVX/releases/download/v0.3.0/hostage-linux-amd64"
      sha256 "09deeac6dd5e53f7c08388523341150a582654634b059f557a18b102fde9629f"
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "hostage-darwin-arm64" => "hostage"
    elsif OS.linux? && Hardware::CPU.arm?
      bin.install "hostage-linux-arm64" => "hostage"
    elsif OS.linux? && !Hardware::CPU.arm?
      bin.install "hostage-linux-amd64" => "hostage"
    end
  end

  test do
    system "#{bin}/hostage", "--help"
  end
end
