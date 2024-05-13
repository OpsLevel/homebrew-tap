# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Opslevel Command Line Utility"
  homepage "https://www.opslevel.com/"
  version "2024.5.13"
  license "MIT"

  depends_on "jq"

  on_macos do
    on_intel do
      url "https://github.com/OpsLevel/cli/releases/download/v2024.5.13/opslevel-darwin-amd64.tar.gz"
      sha256 "b5a8777a9c509facbbfd56c01088796cb6bf888b4ef400813e379111100dc384"

      def install
        bin.install "opslevel"
      end
    end
    on_arm do
      url "https://github.com/OpsLevel/cli/releases/download/v2024.5.13/opslevel-darwin-arm64.tar.gz"
      sha256 "b0e55f4be405ab409873ad6bdc7e370e4493af2f122512d47a45a51d6d75f53c"

      def install
        bin.install "opslevel"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OpsLevel/cli/releases/download/v2024.5.13/opslevel-linux-amd64.tar.gz"
        sha256 "5ea4fcf6246970729a5d43249a253c44c4b565bc0203438996268ff244db34ac"

        def install
          bin.install "opslevel"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/OpsLevel/cli/releases/download/v2024.5.13/opslevel-linux-arm.tar.gz"
        sha256 "d89dc3c6311862fb4802362d8110c0099dbc5d8b1cd6eaa6d091e4d7463f97e2"

        def install
          bin.install "opslevel"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OpsLevel/cli/releases/download/v2024.5.13/opslevel-linux-arm64.tar.gz"
        sha256 "8d59b8315df67413cfdbff9a9785b0b1a5223170d7714941976192e91eeeb27c"

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
