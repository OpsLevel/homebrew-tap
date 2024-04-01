# typed: false
# frozen_string_literal: true

class Kubectl < Formula
  desc 'Command line tool that enables you to import & reconcile services with OpsLevel'
  homepage 'https://www.opslevel.com/'
  version '2024.3.18'
  license 'MIT'

  depends_on 'go'
  depends_on 'jq'

  url 'https://github.com/OpsLevel/kubectl-opslevel',
      tag: "v#{version.major_minor_patch}",
      revision: '4f8a77404a4b285716c94912007753ea02e6d539'
  sha256 'c4696b440b28548f376d1a9f5eaa5bb11b643e1f22beaa140ddf2a9eaf8aeb1c'

  def install
    ENV['CGO_ENABLED'] = '1'
    ENV['CGO_CFLAGS'] = "-I#{Formula['jq'].opt_include}"
    ENV['CGO_LDFLAGS'] = "-L#{Formula['jq'].opt_lib}"

    cd 'src' do
      system 'go', 'build', *std_go_args(
        output: bin / 'kubectl-opslevel',
        ldflags: "-s -w -X main.version=#{version.major_minor_patch} -X main.commit=#{Utils.git_short_head}"
      )
    end
  end

  test do
    system "#{bin}/kubectl-opslevel", 'version'
  end
end
