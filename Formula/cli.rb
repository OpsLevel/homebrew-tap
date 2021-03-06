# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Opslevel Command Line Utility"
  homepage "https://www.opslevel.com/"
  version "2022.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OpsLevel/cli/releases/download/v2022.8.1/opslevel-darwin-arm64.tar.gz"
      sha256 "e68affaa54e78e8e49266aea529e49674ccbb39d0cc2ba2ee9afa242dba580aa"

      def install
        bin.install "opslevel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/OpsLevel/cli/releases/download/v2022.8.1/opslevel-darwin-amd64.tar.gz"
      sha256 "64be062600b91e2e782e6ce6081ce6e21e1e82b3aa2a0fe100dc0d1ffd37a089"

      def install
        bin.install "opslevel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/cli/releases/download/v2022.8.1/opslevel-linux-arm.tar.gz"
      sha256 "49a6a1b177ffa9f3416fef6297da00ce2ca2c3478e530aade4f811b9731fd949"

      def install
        bin.install "opslevel"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/cli/releases/download/v2022.8.1/opslevel-linux-arm64.tar.gz"
      sha256 "a6b5155b25cd3666172e48eb5553364bf2c378752dee61feb718e689ca1d9b12"

      def install
        bin.install "opslevel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/OpsLevel/cli/releases/download/v2022.8.1/opslevel-linux-amd64.tar.gz"
      sha256 "0575a935bf5652773febfc1a50ef09a3af8b5ce3a6f4d87ab86b9fabc35b38e4"

      def install
        bin.install "opslevel"
      end
    end
  end

  depends_on "jq"

  test do
    system "#{bin}/opslevel version"
  end
end
