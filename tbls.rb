# This file was generated by GoReleaser. DO NOT EDIT.
class Tbls < Formula
  desc "tbls is a CI-Friendly tool for document a database, written in Go."
  homepage "https://github.com/k1LoW/tbls"
  version "1.37.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/k1LoW/tbls/releases/download/v1.37.3/tbls_v1.37.3_darwin_amd64.zip"
    sha256 "2136d7e645662255b362ac8777cf898bd98379c990d7865a3e21e112e51cd1e4"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/tbls/releases/download/v1.37.3/tbls_v1.37.3_linux_amd64.tar.gz"
      sha256 "e5ec759ccd371dcc3f7057c81f0393d934040e3e65274258abc02c5048e2dc00"
    end
  end

  def install
    system './tbls', 'completion', 'bash', '--out', 'tbls.bash'
    system './tbls', 'completion', 'zsh', '--out', 'tbls.zsh'
    bin.install 'tbls'
    bash_completion.install 'tbls.bash' => 'tbls'
    zsh_completion.install 'tbls.zsh' => '_tbls'
  end
end
