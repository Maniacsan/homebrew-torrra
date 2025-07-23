class Torrra < Formula
  desc "A Python tool that lets you find and download torrents without leaving your CLI."
  homepage "https://github.com/stabldev/torrra" # Replace with actual URL
  url "https://github.com/stabldev/torrra/releases/download/v1.1.2/torrra_1.1.2_macos_arm64" # Update URL
  sha256 "67b8ea24e8e8f641bc9cb07c451511e40f7a3f4d471aa5d3122c424274d8df21" # Replace with the actual SHA256

  def install
    bin.install "torrra_1.1.2_macos_arm64" => "torrra"# Install the executable
  end

  test do
    assert_match "expected_output", shell_output("#{bin}/torrra --help") # Check help output
    system "#{bin}/torrra", "--version" # Check version output
  end
end
