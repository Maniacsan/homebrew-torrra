class Torrra < Formula
  version "1.2.4"
  sha256 "8845565acad5e8a617dd589a8bbfac6eac6e04fb9c39d18737fdfeb787b5dc87"

  url "https://github.com/stabldev/torrra/releases/download/v1.2.4/torrra_1.2.4_macos_arm64"
  desc "A Python tool that lets you find and download torrents without leaving your CLI."
  name "Torrra"
  homepage "https://github.com/stabldev/torrra"
  

  def install
    bin.install "torrra_1.2.4_macos_arm64" => "torrra"
  end

  test do
    assert_match "expected_output", shell_output("#{bin}/torrra --help") # Check help output
    system "#{bin}/torrra", "--version" # Check version output
  end
end
