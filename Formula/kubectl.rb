# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kubectl < Formula
  desc "Command line tool that enables you to import & reconcile services with OpsLevel"
  homepage "https://www.opslevel.com/"
  version "2024.9.5"
  license "MIT"

  depends_on "go"
  depends_on "jq"
  depends_on :macos

  url 'https://github.com/opslevel/kubectl-opslevel/archive/refs/tags/v2024.9.5.tar.gz'
  sha256 '1ec42905a994e5a52c451af54192cc2e9808fb1ef635a83b73a8b1f7a463f650'

  on_arm do
    sha256 'fcd5b5171880b644657e67d50be95face455712c2f051910a11c08ad929174dd'
  end

  def install
    ENV['CGO_ENABLED'] = '1'
    ENV['CGO_CFLAGS'] = "-I#{Formula['jq'].opt_include}"
    ENV['CGO_LDFLAGS'] = "-L#{Formula['jq'].opt_lib}"
    cd 'src' do
      system 'go', 'build', *std_go_args(
        output: bin / 'kubectl-opslevel',
        ldflags: "-s -w -X main.version=2024.9.5 -X main.commit=a7ddc37"
      )
    end
  end

  test do
    system "#{bin}/kubectl-opslevel", 'version'
  end
end
