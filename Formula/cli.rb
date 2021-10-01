# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Opslevel Command Line Utility"
  homepage "https://www.opslevel.com/"
  version "0.3.0-beta"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OpsLevel/cli/releases/download/v0.3.0-beta/opslevel-darwin-amd64.tar.gz"
      sha256 "b174cadcbc80246f7f92b7f3069f65ad7f39e694f35fb69ed80af3a6d6a21ca1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/OpsLevel/cli/releases/download/v0.3.0-beta/opslevel-darwin-arm64.tar.gz"
      sha256 "b3f8dd165c2fd88cd99c6a217698eba2039aab74efc60d1e8cb32af8d8e9f80c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OpsLevel/cli/releases/download/v0.3.0-beta/opslevel-linux-amd64.tar.gz"
      sha256 "615e157d20cdf5418b0a36aac804bb3f5b737b6bbde9cb776e522d73862d66c6"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/cli/releases/download/v0.3.0-beta/opslevel-linux-arm.tar.gz"
      sha256 "fa0e244eb6f323dc8371fd651aaa1396d64bcba5b3d0b9de138e28ad6b9863ba"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/cli/releases/download/v0.3.0-beta/opslevel-linux-arm64.tar.gz"
      sha256 "a6e1eaa5425d5a1189da2f59355717d5eceb6b0ffc3c8b3405bce38ca1842da7"
    end
  end

  depends_on "jq"

  def install
    bin.install "opslevel"
  end

  test do
    system "#{bin}/opslevel version"
  end
end
