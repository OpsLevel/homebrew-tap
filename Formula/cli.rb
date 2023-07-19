# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Opslevel Command Line Utility"
  homepage "https://www.opslevel.com/"
  version "2023.7.19"
  license "MIT"

  depends_on "jq"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OpsLevel/cli/releases/download/v2023.7.19/opslevel-darwin-amd64.tar.gz"
      sha256 "1ccf8c59aa68e924b75a9ff024ce5a9f5d03839cdee8113494d284db637b8707"

      def install
        bin.install "opslevel"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/OpsLevel/cli/releases/download/v2023.7.19/opslevel-darwin-arm64.tar.gz"
      sha256 "f2f6246783fb0d3c55a185f09aff046fc5dcb4b1568b341e53fe6a332d49f451"

      def install
        bin.install "opslevel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OpsLevel/cli/releases/download/v2023.7.19/opslevel-linux-amd64.tar.gz"
      sha256 "6cb3da3e6a3583fb2cd81c0cc7681bdc73cfd45fa16c4ed5d06c27cf97239c14"

      def install
        bin.install "opslevel"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/cli/releases/download/v2023.7.19/opslevel-linux-arm.tar.gz"
      sha256 "2d56039b6559a6ef1a082f0634bdf7254141b8032ad7c22e3560457712bf23ad"

      def install
        bin.install "opslevel"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/cli/releases/download/v2023.7.19/opslevel-linux-arm64.tar.gz"
      sha256 "3c00960d3a72da35ad6e560317074962807b49ef883a2d600f3462dcddf0f7e7"

      def install
        bin.install "opslevel"
      end
    end
  end

  test do
    system "#{bin}/opslevel version"
  end
end
