class Corsa < Formula
  desc "TUI dashboard for managing local dev processes"
  homepage "https://github.com/tomagranate/corsa"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomagranate/corsa/releases/download/v#{version}/corsa-darwin-arm64.tar.gz"
      sha256 "a6e0d33d048fc74ecd6db08fdfbe35f18c7ca5f3ceac4bcb5518af90e0be63ed"

      def install
        bin.install "corsa-darwin-arm64" => "corsa"
      end
    end

    on_intel do
      url "https://github.com/tomagranate/corsa/releases/download/v#{version}/corsa-darwin-x64.tar.gz"
      sha256 "130517067b18ff5251a985d09e0231aa537cbdc324a2a946a5cd40f7d03244ef"

      def install
        bin.install "corsa-darwin-x64" => "corsa"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomagranate/corsa/releases/download/v#{version}/corsa-linux-arm64.tar.gz"
      sha256 "2d6d56337569bab4ab88a6e4b649edfc4347ee8509c560c2dc4b47695c304076"

      def install
        bin.install "corsa-linux-arm64" => "corsa"
      end
    end

    on_intel do
      url "https://github.com/tomagranate/corsa/releases/download/v#{version}/corsa-linux-x64.tar.gz"
      sha256 "09240aae77f87caf899476e4f16afa9b7fcd993ea994a212c73fd573f49b6420"

      def install
        bin.install "corsa-linux-x64" => "corsa"
      end
    end
  end

  test do
    assert_match "corsa", shell_output("#{bin}/corsa --help")
  end
end
