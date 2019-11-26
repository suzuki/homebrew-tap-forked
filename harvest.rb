# This file was generated by GoReleaser. DO NOT EDIT.
class Harvest < Formula
  desc "Portable log aggregation tool for middle-scale system operation/observation."
  homepage "https://github.com/k1LoW/harvest"
  version "0.16.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/k1LoW/harvest/releases/download/v0.16.2/harvest_v0.16.2_darwin_amd64.zip"
    sha256 "8fd3d81dc4f80e3f53e2935507b4520029ae631b85d9c8616a877fc45edfc98a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/harvest/releases/download/v0.16.2/harvest_v0.16.2_linux_amd64.tar.gz"
      sha256 "e4c454256ed3631c86d87e98500c8b998a96a8835444ee91a94490728b8ffebe"
    end
  end

  def install
    bin.install 'hrv'
  end
end
