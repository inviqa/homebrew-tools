class CpRemote < Formula
  desc "Tool to create and sync code to a Continuous Pipe remote environment"
  homepage "https://docs.continuouspipe.io/guides/remote-development/"
  version '0.0.1'
  url "https://continuouspipe.github.io/remote-environment-client/#{version}/darwin-amd64.gz"
  sha256 "b6e3d958562122e6438d528ccdd944418f93d64a040561e8cc04f24f4bd736a9"

  def install
    system "mv darwin-amd64 cp-remote"
    bin.install "cp-remote"
  end
end
