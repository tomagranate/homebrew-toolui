class Corsa < Formula
  desc "TUI dashboard for managing local dev processes"
  homepage "https://github.com/tomagranate/corsa"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomagranate/corsa/releases/download/v#{version}/corsa-darwin-arm64.tar.gz"
      sha256 "7b76c9d0f23f0031080f83542229a8f2b103ea0a49d8c758cea0608707b486f5"

      def install
        bin.install "corsa-darwin-arm64" => "corsa"
      end
    end

    on_intel do
      url "https://github.com/tomagranate/corsa/releases/download/v#{version}/corsa-darwin-x64.tar.gz"
      sha256 "482b3d45efb289ab2c20eade929015c5191b43063e8607034877cbff8af5ac6f"

      def install
        bin.install "corsa-darwin-x64" => "corsa"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomagranate/corsa/releases/download/v#{version}/corsa-linux-arm64.tar.gz"
      sha256 "0f7beb4d95ae63bbbbf453dc43d292fcb0f3e775e13d8e5a0696cd79aee406a2"

      def install
        bin.install "corsa-linux-arm64" => "corsa"
      end
    end

    on_intel do
      url "https://github.com/tomagranate/corsa/releases/download/v#{version}/corsa-linux-x64.tar.gz"
      sha256 "fff4daa0462d3857dc19887d6a7b652dfdac7626f6749ca69cf8fd89ee18cd79"

      def install
        bin.install "corsa-linux-x64" => "corsa"
      end
    end
  end

  test do
    assert_match "corsa", shell_output("#{bin}/corsa --help")
  end
end
