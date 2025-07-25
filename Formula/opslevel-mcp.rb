# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpslevelMcp < Formula
  desc "Opslevel MCP Server"
  homepage "https://www.opslevel.com/"
  version "2025.6.13"
  license "MIT"

  depends_on "jq"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OpsLevel/opslevel-mcp/releases/download/v2025.6.13/opslevel-mcp-darwin-amd64.tar.gz"
      sha256 "c5eafbfd4b90169a663a4f03b9738abaeaac50d01cc73b0644d7ed0316f55b75"

      def install
        bin.install "opslevel-mcp"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/OpsLevel/opslevel-mcp/releases/download/v2025.6.13/opslevel-mcp-darwin-arm64.tar.gz"
      sha256 "e7bcba166f5c3ebb946f3b92d97cb6219dbf00d397a5b2249df131646f509fd1"

      def install
        bin.install "opslevel-mcp"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/opslevel-mcp/releases/download/v2025.6.13/opslevel-mcp-linux-amd64.tar.gz"
      sha256 "19654858dcfd2302df110b1cc61778f4fa26cccfdfe5ce1800570b1733e01836"
      def install
        bin.install "opslevel-mcp"
      end
    end
    if Hardware::CPU.arm? and !Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/opslevel-mcp/releases/download/v2025.6.13/opslevel-mcp-linux-arm.tar.gz"
      sha256 "eb3764f8347c2b377883716b996ab8d7016e73bb90d244905363c615db173b67"
      def install
        bin.install "opslevel-mcp"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/OpsLevel/opslevel-mcp/releases/download/v2025.6.13/opslevel-mcp-linux-arm64.tar.gz"
      sha256 "5d172992eb1a6ffd79d9b51fb9544a90748c9c1cd378284ff4d4ad8643293216"
      def install
        bin.install "opslevel-mcp"
      end
    end
  end

  test do
    system "#{bin}/opslevel-mcp version"
  end
end
