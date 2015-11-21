class IosSimulatorAppInstaller < Formula
  homepage "https://github.com/stepanhruda/ios-simulator-app-installer"
  url "https://github.com/stepanhruda/ios-simulator-app-installer/archive/0.2.0.tar.gz"
  version "0.2.0"
  sha256 "6c06d079a1576bf0e933f272803efb0bb78294efc21076ed867670555fb35b29"

  depends_on :xcode => "7"
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
