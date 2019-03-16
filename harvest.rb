# This file was generated by GoReleaser. DO NOT EDIT.
class Harvest < Formula
  desc "Portable log aggregation tool for middle-scale system operation/observation."
  homepage "https://github.com/k1LoW/harvest"
  url "https://github.com/k1LoW/harvest/releases/download/v0.6.1/harvest_v0.6.1_darwin_amd64.zip"
  version "0.6.1"
  sha256 "7437f5dbfb9a4a723e280c0cbe0f041deabe3d9493a079a2049240da52af0b92"

  def install
    bin.install 'hrv'
  end
end
