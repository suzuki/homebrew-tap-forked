# This file was generated by GoReleaser. DO NOT EDIT.
class Dio < Formula
  desc "Read/Write command using Direct I/O."
  homepage "https://github.com/k1LoW/dio"
  version "0.1.0"

  if OS.mac?
    url "https://github.com/k1LoW/dio/releases/download/v0.1.0/dio_v0.1.0_darwin_amd64.zip"
    sha256 "4a20575244256c5f6b4c4a019b5711c32074f5d8cd9a3e8b05289aaa47687e0a"
  elsif OS.linux?
    url "https://github.com/k1LoW/dio/releases/download/v0.1.0/dio_v0.1.0_linux_amd64.tar.gz"
    sha256 "c1fa2706a14488f35ef756dbdc7f93e98d2eab3d6ac8480048fbbb8a8131d4e4"
  end

  def install
    bin.install 'dio'
  end
end
