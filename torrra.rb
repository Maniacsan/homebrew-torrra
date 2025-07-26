class Torrra < Formula
  version "1.2.0"
  sha256 "b4615d99763b9f4aeb1f3066419111f058b5f1fb1ca64e5f1044672d60a9df6f"

  url "https://github.com/stabldev/torrra/releases/download/v1.2.0/torrra_1.2.0_macos_arm64"
  desc "A Python tool that lets you find and download torrents without leaving your CLI."
  name "Torrra"
  homepage "https://github.com/stabldev/torrra"
  

  def install
    bin.install "torrra_1.2.0_macos_arm64" => "torrra"
  end

  test do
    assert_match "expected_output", shell_output("#{bin}/torrra --help") # Check help output
    system "#{bin}/torrra", "--version" # Check version output
  end
end
