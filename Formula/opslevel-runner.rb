# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpslevelRunner < Formula
  desc "Command line tool that runs jobs for OpsLevel"
  homepage "https://www.opslevel.com/"
  version "2025.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OpsLevel/opslevel-runner/releases/download/v2025.1.6/opslevel-runner-darwin-amd64.tar.gz"
      sha256 "278c171dcce10309bb65b2fd844867d0d3aab807b867e57e0ed882310fd5be48"

      def install
        bin.install "opslevel-runner"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/OpsLevel/opslevel-runner/releases/download/v2025.1.6/opslevel-runner-darwin-arm64.tar.gz"
      sha256 "0e99a8d6e570c5ee5734953f8f5891fe980e7b7a74693f8705fced0f1e173faf"

      def install
        bin.install "opslevel-runner"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OpsLevel/opslevel-runner/releases/download/v2025.1.6/opslevel-runner-linux-amd64.tar.gz"
        sha256 "c5f87994bbe8b7398f3c81cbccb4b322e0c20b5824680fb0a6b8333353f9ef03"

        def install
          bin.install "opslevel-runner"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/OpsLevel/opslevel-runner/releases/download/v2025.1.6/opslevel-runner-linux-arm.tar.gz"
        sha256 "09e032169b6cf69d02ec52494bf49f01ef46a7f35b7e31f7299258331a5d6019"

        def install
          bin.install "opslevel-runner"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OpsLevel/opslevel-runner/releases/download/v2025.1.6/opslevel-runner-linux-arm64.tar.gz"
        sha256 "c97f3a846c5b22cf9019b6e5f8f038876a9f246289153ca03cac05737caaa203"

        def install
          bin.install "opslevel-runner"
        end
      end
    end
  end

  test do
    system "#{bin}/opslevel-runner version"
  end
end
