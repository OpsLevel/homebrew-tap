class kubectl < Formula
  desc "a command line tool that enables you to import & reconcile services with OpsLevel"
  homepage "https://www.opslevel.com/"
  version "v0.4.0"
  
  if OS.mac?
    url "https://github.com/OpsLevel/kubectl-opslevel/releases/download/v0.4.0/kubectl-opslevel-darwin-amd64.tar.gz"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/OpsLevel/kubectl-opslevel/releases/download/v0.4.0/kubectl-opslevel-linux-amd64.tar.gz"
  end

  bottle :unneeded
  conflicts_with "kubectl-opslevel"
  
  # depends_on "cmake" => :build

  def install
    bin.install "kubectl-opslevel"
  end

  test do
    system "#{bin}/kubectl-opslevel version"
  end
end