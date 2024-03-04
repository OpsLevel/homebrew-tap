# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kubectl < Formula
  desc 'Command line tool that enables you to import & reconcile services with OpsLevel'
  homepage 'https://www.opslevel.com/'
  version '2024.3.4'
  license 'MIT'

  depends_on 'go'
  depends_on 'jq'
  depends_on :macos

  on_macos do
    url 'https://github.com/OpsLevel/kubectl-opslevel/archive/refs/tags/v2024.3.4.tar.gz'
    sha256 '27480caca25a8d3634d5550a2362536102fa43c62aa87bf33bf2b5fac37b002c'

    if Hardware::CPU.arm?
      sha256 '15bda9c278ac72fd9209999fffeb345f0a21551d3ed7237812c95fdb0bbf6d7f'
    end

    def install
      ENV['CGO_ENABLED'] = '1'
      ENV['CGO_CFLAGS'] = "-I#{Formula['jq'].opt_include}"
      ENV['CGO_LDFLAGS'] = "-L#{Formula['jq'].opt_lib}"

      cd 'src' do
        system 'go', 'build', *std_go_args(output: bin / 'kubectl-opslevel',
                                           ldflags: '-s -w -X main.version=2024.3.4 -X main.commit=0ab69af3cf5d')
      end
    end
  end

  test do
    system "#{bin}/kubectl-opslevel", 'version'
  end
end
