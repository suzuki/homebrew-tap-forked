# This file was generated by GoReleaser. DO NOT EDIT.
class Metr < Formula
  desc "metr gets system metrics."
  homepage "https://github.com/k1LoW/metr"
  version "0.2.2"

  if OS.mac?
    url "https://github.com/k1LoW/metr/releases/download/v0.2.2/metr_v0.2.2_darwin_amd64.zip"
    sha256 "54d7c8e5144d21c720745dbbddbd5cd071cc2718588c6032d6b812a28349c8d9"
  elsif OS.linux?
    url "https://github.com/k1LoW/metr/releases/download/v0.2.2/metr_v0.2.2_linux_amd64.tar.gz"
    sha256 "7ac71a24ae3f02a9d871e3a856347704f6abcdb4251fc4bbe1266f4eb9951388"
  end

  def install
    bin.install 'metr'
  end
end
