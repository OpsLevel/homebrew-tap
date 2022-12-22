# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Opslevel Command Line Utility"
  homepage "https://www.opslevel.com/"
  version "2022.12.22"
  license "MIT"

  depends_on "jq"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OpsLevel/cli/releases/download/v2022.12.22/opslevel-darwin-amd64.tar.gz"
      sha256 "4694b7049a3c2d9a54c61340119cd1b4e14f56f6465cd87a25a6bb67342df2d1"

      def install
        bin.install "opslevel"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/OpsLevel/cli/releases/download/v2022.12.22/opslevel-darwin-arm64.tar.gz"
      sha256 "969429c41fdbe2d4fbff44168a09bcfb98e6cd1e1be50eda06c7911efd33ee51"

      def install
        bin.install "opslevel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OpsLevel/cli/releases/download/v2022.12.22/opslevel-linux-amd64.tar.gz"
      sha256 "541264e97ceb9dade19cf9fe463c1d5a70f40642dbbf726615f2905ffcc8a47c"

      def install
        bin.install "opslevel"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/cli/releases/download/v2022.12.22/opslevel-linux-arm64.tar.gz"
      sha256 "a392bbb0cff3e87e9c80a9e404c0aca63b26f2e679f3a767a3fd1489ec5d2a80"

      def install
        bin.install "opslevel"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/cli/releases/download/v2022.12.22/opslevel-linux-arm.tar.gz"
      sha256 "6ae74a387eb9633e5598a351fa1b1dfbe9f00c0ae5b1071bfe74c53bc11242a8"

      def install
        bin.install "opslevel"
      end
    end
  end

  test do
    system "#{bin}/opslevel version"
  end
end
