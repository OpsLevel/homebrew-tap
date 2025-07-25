# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpslevelRunner < Formula
  desc "Command line tool that runs jobs for OpsLevel"
  homepage "https://www.opslevel.com/"
  version "2025.7.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OpsLevel/opslevel-runner/releases/download/v2025.7.16/opslevel-runner-darwin-amd64.tar.gz"
      sha256 "f43a7add6e741a35e2a8b4a2ad9cc87269baaa645d98822b509c87b202179d1f"

      def install
        bin.install "opslevel-runner"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/OpsLevel/opslevel-runner/releases/download/v2025.7.16/opslevel-runner-darwin-arm64.tar.gz"
      sha256 "844280da0c2c6aa36b74bfca3f009a14b7b67788d6202975bfa8b5afa0956bdb"

      def install
        bin.install "opslevel-runner"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/opslevel-runner/releases/download/v2025.7.16/opslevel-runner-linux-amd64.tar.gz"
      sha256 "f65cfc7843875c0b945a6dfc9a42fedb3bdc4232abe15c51255b6018e901ec9c"
      def install
        bin.install "opslevel-runner"
      end
    end
    if Hardware::CPU.arm? and !Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/opslevel-runner/releases/download/v2025.7.16/opslevel-runner-linux-arm.tar.gz"
      sha256 "276a7230e9488eed45fbc06427457ee998857918055e029a093bf8bfdb52aee0"
      def install
        bin.install "opslevel-runner"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/opslevel-runner/releases/download/v2025.7.16/opslevel-runner-linux-arm64.tar.gz"
      sha256 "a4d8f1a2504d860fdfd8aa23bde1d599cc73bffaca77474014f10827a47961e9"
      def install
        bin.install "opslevel-runner"
      end
    end
  end

  test do
    system "#{bin}/opslevel-runner version"
  end
end
