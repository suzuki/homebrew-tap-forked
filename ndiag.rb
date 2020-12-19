# This file was generated by GoReleaser. DO NOT EDIT.
class Ndiag < Formula
  desc "ndiag is a high-level architecture diagramming/documentation tool."
  homepage "https://github.com/k1LoW/ndiag"
  version "0.7.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/k1LoW/ndiag/releases/download/v0.7.2/ndiag_v0.7.2_darwin_amd64.zip"
    sha256 "6a8222d2412fbf4cef7ab325940d6aedcf0f823af2cb4d3e26ccb5de517e3e8f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/ndiag/releases/download/v0.7.2/ndiag_v0.7.2_linux_amd64.tar.gz"
      sha256 "ee017812b9207239caef813a9628866eade6e391723ed626dfc753fff54434a8"
    end
  end

  def install
    system './ndiag', 'completion', 'bash', '--out', 'ndiag.bash'
    system './ndiag', 'completion', 'zsh', '--out', 'ndiag.zsh'
    bin.install 'ndiag'
    bash_completion.install 'ndiag.bash' => 'ndiag'
    zsh_completion.install 'ndiag.zsh' => '_ndiag'
  end
end
