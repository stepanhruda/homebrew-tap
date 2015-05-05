class IosSimulatorAppInstaller < Formula
  homepage "https://github.com/stepanhruda/ios-simulator-app-installer"
  url "https://github.com/stepanhruda/ios-simulator-app-installer/archive/v0.1.5.tar.gz"
  version "0.1.5"
  sha256 "0f7c2f1b483f0203dbf54db6d533656c6f27ada1909aad7cdaed7f1f4d5c2279"

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
