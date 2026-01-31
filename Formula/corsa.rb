class Corsa < Formula
  desc "TUI dashboard for managing local dev processes"
  homepage "https://github.com/tomagranate/corsa"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomagranate/corsa/releases/download/v#{version}/corsa-darwin-arm64.tar.gz"
      sha256 "bbfa7dc4c9ca04efe8ee05c46462aad8ee4edeb2b8349eebfda63ed8f32ccffb"
    else
      url "https://github.com/tomagranate/corsa/releases/download/v#{version}/corsa-darwin-x64.tar.gz"
      sha256 "41d24dade4d08356a33c5d9a080faf464c13acb50700e6f2f208db78c9881bba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tomagranate/corsa/releases/download/v#{version}/corsa-linux-arm64.tar.gz"
      sha256 "0867cae205d3730e63efda86cc9154fb4f036d91929159a6ee8e1f0c5c20553f"
    else
      url "https://github.com/tomagranate/corsa/releases/download/v#{version}/corsa-linux-x64.tar.gz"
      sha256 "1c68500ec383d2e86c502abae0bf4d434e06341a2c73e689336e9d1756f1cb48"
    end
  end

  def install
    bin.install "corsa"
  end
end
