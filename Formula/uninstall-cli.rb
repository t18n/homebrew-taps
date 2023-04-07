class UninstallCli < Formula
  desc "CLI tool for cleaning up app data on macOS"
  homepage "https://github.com/turboninh/uninstall-cli"
  url "https://github.com/turboninh/uninstall-cli.git", :branch => 'main'
  version "1.0"
  
  def install
    bin.install "uninstall-cli.sh"
  end

  test do
    system "#{bin}/uninstall-cli.sh", "--help"
  end
end
