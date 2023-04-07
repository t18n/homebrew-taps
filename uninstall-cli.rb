class UninstallCli < Formula
  desc "CLI tool for cleaning up app data on macOS"
  homepage "https://github.com/turboninh/uninstall-cli"
  url "https://raw.githubusercontent.com/turboninh/uninstall-cli/main/uninstall-cli.sh"
  sha256 "9b8e04583db14df3ab727e0e2d72dc193cb12f7f0f0cfa0965269a1c2f7983f3"

  def install
    bin.install "uninstall-cli.sh" => "uninstall-cli"
  end

  test do
    assert_match "Usage: uninstall-cli.sh", shell_output("#{bin}/uninstall-cli --help", 1)
  end
end
