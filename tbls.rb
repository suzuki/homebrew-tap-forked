# This file was generated by GoReleaser. DO NOT EDIT.
class Tbls < Formula
  desc "tbls is a CI-Friendly tool for document a database, written in Go."
  homepage "https://github.com/k1LoW/tbls"
  version "1.38.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/k1LoW/tbls/releases/download/v1.38.0/tbls_v1.38.0_darwin_amd64.zip"
    sha256 "cfde88fbac74207968027e5bc281141602d61d7ecb0a09a679cd6ac25a032b8c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/tbls/releases/download/v1.38.0/tbls_v1.38.0_linux_amd64.tar.gz"
      sha256 "c82e90d06cc57a690fa54bef46ea9a0875fefbb2ea56064712a22ed9ad48dd1e"
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
