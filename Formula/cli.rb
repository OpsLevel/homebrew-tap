# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
    desc "Opslevel Command Line Utility"
    homepage "https://www.opslevel.com/"
    version "v0.1.0-beta.1"
    license "MIT"
    bottle :unneeded
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/OpsLevel/cli/releases/download/v0.1.0-beta.1/opslevel-darwin-amd64.tar.gz"
        sha256 "6ea7c2b7af93584e5315c1891321b1be0708d43e6c521f1b2958d6dad16a7a9f"
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/OpsLevel/cli/releases/download/v0.1.0-beta.1/opslevel-linux-amd64.tar.gz"
        sha256 "6ea7c2b7af93584e5315c1891321b1be0708d43e6c521f1b2958d6dad16a7a9f"
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
  