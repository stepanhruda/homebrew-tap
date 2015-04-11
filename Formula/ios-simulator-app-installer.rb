class IosSimulatorAppInstaller < Formula
  homepage "https://github.com/stepanhruda/ios-simulator-app-installer"
  url "https://github.com/stepanhruda/ios-simulator-app-installer/archive/v0.1.4.tar.gz"
  version "0.1.4"
  sha256 "c1b419ac0f1f8005d2515ef847a7a163f3c628cdc14a36fe3ed0c951ba52dfff"

  depends_on :xcode => "6.3"
  depends_on :macos => :yosemite

  def install
    system "make"
    bin.install "ios-simulator-app-installer"
    share.install "app-package-launcher"
  end

  test do
    system "make"
  end
end
