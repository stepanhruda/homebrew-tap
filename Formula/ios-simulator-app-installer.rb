class IosSimulatorAppInstaller < Formula
  homepage "https://github.com/stepanhruda/ios-simulator-app-installer"
  url "https://github.com/stepanhruda/ios-simulator-app-installer/archive/v0.1.3.tar.gz"
  version "0.1.3"
  sha256 "3c10f7489b345a0846bc1220c3515a38b6e4e5a7c992aa63ea737291b8322cad"

  depends_on :xcode => "6.2"
  depends_on :macos => :mavericks

  def install
    system "make"
    bin.install "ios-simulator-app-installer"
    share.install "app-package-launcher"
  end

  test do
    system "make"
  end
end
