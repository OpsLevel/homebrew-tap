class KubectlOpslevel < Formula
  desc "a command line tool that enables you to import & reconcile services with OpsLevel"
  homepage "https://www.opslevel.com/"
  version "v0.4.0"
  license "MIT"
  
  if OS.mac?
    url "https://github.com/OpsLevel/kubectl-opslevel/releases/download/v0.4.0/kubectl-opslevel-darwin-amd64.tar.gz"
    sha256 "c5621834585ffd69447b79d0486449b1f199f82dfe218dd5187fb457ef0517ad"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/OpsLevel/kubectl-opslevel/releases/download/v0.4.0/kubectl-opslevel-linux-amd64.tar.gz"
    sha256 "c5621834585ffd69447b79d0486449b1f199f82dfe218dd5187fb457ef0517ad"
  end

  bottle :unneeded

  def install
    bin.install "kubectl-opslevel"
  end

  test do
    system "#{bin}/kubectl-opslevel version"
  end
end