# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Opslevel Command Line Utility"
  homepage "https://www.opslevel.com/"
  version "2024.3.15"
  license "MIT"

  depends_on "jq"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OpsLevel/cli/releases/download/v2024.3.15/opslevel-darwin-arm64.tar.gz"
      sha256 "fae3fc881da66e803e8b9a4b8d57317890cbb12c23b0d89f2278e1e8a85abea1"

      def install
        bin.install "opslevel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/OpsLevel/cli/releases/download/v2024.3.15/opslevel-darwin-amd64.tar.gz"
      sha256 "b339dd3253ae223db4145ad1963e2ec0b85e2375ddc9c9e8a863aa0ed654837f"

      def install
        bin.install "opslevel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/cli/releases/download/v2024.3.15/opslevel-linux-arm.tar.gz"
      sha256 "326b5b38f67fb493af853f5c1599aa8ef421247924266f176cbff7fce49886fb"

      def install
        bin.install "opslevel"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/cli/releases/download/v2024.3.15/opslevel-linux-arm64.tar.gz"
      sha256 "0af06b2deb75f7437eb7cd9c85fc699469b7538c18b9aa4f3efab8e5e5c8324b"

      def install
        bin.install "opslevel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/OpsLevel/cli/releases/download/v2024.3.15/opslevel-linux-amd64.tar.gz"
      sha256 "598526b85776a6dc3a442b5d7f21b9ef19bb276fb6abd6262cd883d642f13d6f"

      def install
        bin.install "opslevel"
      end
    end
  end

  test do
    system "#{bin}/opslevel version"
  end
end
