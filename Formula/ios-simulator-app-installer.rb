class IosSimulatorAppInstaller < Formula
  homepage ""
  url "https://github.com/stepanhruda/ios-simulator-app-installer/archive/v0.1.1.tar.gz"
  version "0.1.1"
  sha256 "d80decd44cc62ec87f3c30d93a620924c838a608383976feab404d9d28606cab"

  def install
    system "./build.sh"
    bin.install "ios-simulator-app-installer"
    share.install "app-package-launcher"
    prefix.install "LICENSE", "README.md"
  end

  test do
  end
end
