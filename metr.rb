# This file was generated by GoReleaser. DO NOT EDIT.
class Metr < Formula
  desc "metr."
  homepage "https://github.com/k1LoW/metr"
  version "0.0.4"

  if OS.mac?
    url "https://github.com/k1LoW/metr/releases/download/v0.0.4/metr_v0.0.4_darwin_amd64.zip"
    sha256 "a50070440f8fd62f6bdc80736adb980047a26073b7c67d843b95b870ddbd88d1"
  elsif OS.linux?
    url "https://github.com/k1LoW/metr/releases/download/v0.0.4/metr_v0.0.4_linux_amd64.tar.gz"
    sha256 "ffd5a38011d08ee1bc75619f75a108a91ef9c42e16541b55a1224bf27fd54b57"
  end

  def install
    bin.install 'metr'
  end
end