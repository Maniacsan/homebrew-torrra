class Torrra < Formula
  version "1.2.2"
  sha256 "ada9a35ac9aa36bc8fa289c90561d7cc9a1fd71da7e6d2eecfb215bfa3b894e4"

  url "https://github.com/stabldev/torrra/releases/download/v1.2.2/torrra_1.2.2_macos_arm64"
  desc "A Python tool that lets you find and download torrents without leaving your CLI."
  name "Torrra"
  homepage "https://github.com/stabldev/torrra"
  

  def install
    bin.install "torrra_1.2.2_macos_arm64" => "torrra"
  end

  test do
    assert_match "expected_output", shell_output("#{bin}/torrra --help") # Check help output
    system "#{bin}/torrra", "--version" # Check version output
  end
end
