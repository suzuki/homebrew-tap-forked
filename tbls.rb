# This file was generated by GoReleaser. DO NOT EDIT.
class Tbls < Formula
  desc "tbls is a CI-Friendly tool for document a database, written in Go."
  homepage "https://github.com/k1LoW/tbls"
  url "https://github.com/k1LoW/tbls/releases/download/v1.13.2/tbls_v1.13.2_darwin_amd64.zip"
  version "1.13.2"
  sha256 "563cd795cada9ee435ac3e115ca2726aeb351be1057fe21c87a02a361e55ea0d"

  def install
    bin.install 'tbls'
  end
end
