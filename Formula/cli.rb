# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Opslevel Command Line Utility"
  homepage "https://www.opslevel.com/"
  version "2024.10.28"
  license "MIT"

  depends_on "jq"

  on_macos do
    on_intel do
      url "https://github.com/OpsLevel/cli/releases/download/v2024.10.28/opslevel-darwin-amd64.tar.gz"
      sha256 "a477757a75890667898fce5c838b78a969716eb7cbae6675a505f3a628296d47"

      def install
        bin.install "opslevel"
      end
    end
    on_arm do
      url "https://github.com/OpsLevel/cli/releases/download/v2024.10.28/opslevel-darwin-arm64.tar.gz"
      sha256 "7f9c7b855e5f2d9c3535e895b3903c141ebe3d71bb6935581e3bcbf459729ac3"

      def install
        bin.install "opslevel"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OpsLevel/cli/releases/download/v2024.10.28/opslevel-linux-amd64.tar.gz"
        sha256 "6f852d0649c1833d77eb309ac9d85496e69de796a5ef3a1e53b5df6eadccf0fa"

        def install
          bin.install "opslevel"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/OpsLevel/cli/releases/download/v2024.10.28/opslevel-linux-arm.tar.gz"
        sha256 "9aa9b008a5e2a52f94564db81a7adfbdd0353034458314cbf21385e449c4c586"

        def install
          bin.install "opslevel"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OpsLevel/cli/releases/download/v2024.10.28/opslevel-linux-arm64.tar.gz"
        sha256 "280a121b775bb086a3a962db5326eb1348290060aafb95f25c39fd040c898d75"

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
