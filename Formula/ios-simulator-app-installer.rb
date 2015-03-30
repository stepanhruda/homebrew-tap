class IosSimulatorAppInstaller < Formula
  homepage ""
  url "https://github.com/stepanhruda/ios-simulator-app-installer/archive/v0.1.2.tar.gz"
  version "0.1.2"
  sha256 "9f9f144fbc387f79e9e23774febb9177941a6c469031f1c843154c6df48e6fcf"

  def install
    system "./build.sh"
    bin.install "ios-simulator-app-installer"
    share.install "app-package-launcher"
    prefix.install "LICENSE", "README.md"
  end

  test do
  end
end
