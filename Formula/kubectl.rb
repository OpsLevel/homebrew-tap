# typed: false
# frozen_string_literal: true

class Kubectl < Formula
  desc 'Command line tool that enables you to import & reconcile services with OpsLevel'
  homepage 'https://www.opslevel.com/'
  version '2024.4.3'
  license 'MIT'

  depends_on 'go'
  depends_on 'jq'

  url 'https://github.com/OpsLevel/kubectl-opslevel.git',
      tag: 'v2024.4.3',
      revision: '9114eb73696ee84c9bc57b91fed9066ab98875f1'
  sha256 'a8513bef8361149e29ded6705b3595facff7072e8c2ca759a8fdaadc31564a37'

  def install
    ENV['CGO_ENABLED'] = '1'
    ENV['CGO_CFLAGS'] = "-I#{Formula['jq'].opt_include}"
    ENV['CGO_LDFLAGS'] = "-L#{Formula['jq'].opt_lib}"

    cd 'src' do
      system 'go', 'build', *std_go_args(
        output: bin / 'kubectl-opslevel',
        ldflags: "-s -w -X main.version=#{version.major_minor_patch} -X main.commit=9114eb73696e"
      )
    end
  end

  test do
    system "#{bin}/kubectl-opslevel", 'version'
  end
end
