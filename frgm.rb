# This file was generated by GoReleaser. DO NOT EDIT.
class Frgm < Formula
  desc "frgm is a meta snippet (fragment) manager."
  homepage "https://github.com/k1LoW/frgm"
  version "0.8.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/k1LoW/frgm/releases/download/v0.8.3/frgm_v0.8.3_darwin_amd64.zip"
    sha256 "d56929f20a70c2282f57d1bea544dbf39216969db28216e8716f8818a8a8295e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/frgm/releases/download/v0.8.3/frgm_v0.8.3_linux_amd64.tar.gz"
      sha256 "113d24c1152338117ba16e68aec9e140bf8ad4d2466de7364894a883e59d0e07"
    end
  end

  def install
    system './frgm', 'completion', 'bash', '--out', 'frgm.bash'
    system './frgm', 'completion', 'zsh', '--out', 'frgm.zsh'
    bin.install 'frgm'
    bash_completion.install 'frgm.bash' => 'frgm'
    zsh_completion.install 'frgm.zsh' => '_frgm'
  end
end
