# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Opslevel Command Line Utility"
  homepage "https://www.opslevel.com/"
  version "2024.12.29"
  license "MIT"

  depends_on "jq"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OpsLevel/cli/releases/download/2024.12.29/opslevel-darwin-amd64.tar.gz"
      sha256 "f1d76dde57100bb555f979cb8117bfa8c6b34a7360c87be15e371e9c6a0c9b15"

      def install
        bin.install "opslevel"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/OpsLevel/cli/releases/download/2024.12.29/opslevel-darwin-arm64.tar.gz"
      sha256 "84b7630a457e9f910147ce985ae420abedb53deb718a783534d83f7fb9926523"

      def install
        bin.install "opslevel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OpsLevel/cli/releases/download/2024.12.29/opslevel-linux-amd64.tar.gz"
        sha256 "e5b1756c1f046168a15244c1dc34cb49a6356aef22a2cfb199befc68fa5ccffa"

        def install
          bin.install "opslevel"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/OpsLevel/cli/releases/download/2024.12.29/opslevel-linux-arm.tar.gz"
        sha256 "8e3e6265f0467befb709dfa468405bd97294fe0023a603d1426ea7156018e421"

        def install
          bin.install "opslevel"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OpsLevel/cli/releases/download/2024.12.29/opslevel-linux-arm64.tar.gz"
        sha256 "4c2dec23bb8a29aefcf875f4c18473d40bd8d06f45a914d6a5d925af0c1bbe0f"

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
