class IosSimulatorAppInstaller < Formula
  homepage ""
  url "https://github.com/stepanhruda/ios-simulator-app-installer/archive/v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "1ac7e3fb49cd9c8e51add824360d8b6239a1e6d604338e55bb897ee1da5fe61b"

  def install
    system "./build.sh"
    bin.install "ios-simulator-app-installer"
    share.install "app-package-launcher"
    prefix.install "LICENSE", "README.md"
  end

  test do
  end
end
