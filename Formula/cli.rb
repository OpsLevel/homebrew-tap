# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Opslevel Command Line Utility"
  homepage "https://www.opslevel.com/"
  version "2024.5.28"
  license "MIT"

  depends_on "jq"

  on_macos do
    on_intel do
      url "https://github.com/OpsLevel/cli/releases/download/v2024.5.28/opslevel-darwin-amd64.tar.gz"
      sha256 "96a39ca32c50d455d59d32a85e414849164819d79cf57deb554ba9457cc3cb90"

      def install
        bin.install "opslevel"
      end
    end
    on_arm do
      url "https://github.com/OpsLevel/cli/releases/download/v2024.5.28/opslevel-darwin-arm64.tar.gz"
      sha256 "638d573978d010bc8f51aec6ec06e0ebef90545ce02663c5cb65d6343c4677a4"

      def install
        bin.install "opslevel"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OpsLevel/cli/releases/download/v2024.5.28/opslevel-linux-amd64.tar.gz"
        sha256 "00cc2279ea4f5aa0bdfbafff0b3ffb5cf84c7344e25dc30ac7a3a7bd2929c243"

        def install
          bin.install "opslevel"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/OpsLevel/cli/releases/download/v2024.5.28/opslevel-linux-arm.tar.gz"
        sha256 "56d20b28e994feb9ab0c63c3768ea294cad6394f1490a672daab22107ebc0920"

        def install
          bin.install "opslevel"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OpsLevel/cli/releases/download/v2024.5.28/opslevel-linux-arm64.tar.gz"
        sha256 "1bccc5fef098a9722f975660b70465a8b0480856aac4d5aecbdb9a463c85b5da"

        def install
          bin.install "opslevel"
        end
      end
    end
  end

  test do
    system "#{bin}/opslevel version"
  end
end
