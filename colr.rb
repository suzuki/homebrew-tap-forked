# This file was generated by GoReleaser. DO NOT EDIT.
class Colr < Formula
  desc "colr colors strings, colorfully."
  homepage "https://github.com/k1LoW/colr"
  version "0.1.0"

  if OS.mac?
    url "https://github.com/k1LoW/colr/releases/download/v0.1.0/colr_v0.1.0_darwin_amd64.zip"
    sha256 "e8698999c0ed25e158cd4a5e8d3eac2c73fa89591ed587c8864e0736e05a4563"
  elsif OS.linux?
    url "https://github.com/k1LoW/colr/releases/download/v0.1.0/colr_v0.1.0_linux_amd64.tar.gz"
    sha256 "744ef8d47e1373a29d0484233a754f0be6569a515ffc98adc0fcbeeb113016be"
  end

  def install
    bin.install 'colr'
  end
end
