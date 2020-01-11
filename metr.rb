# This file was generated by GoReleaser. DO NOT EDIT.
class Metr < Formula
  desc "metr gets system metrics."
  homepage "https://github.com/k1LoW/metr"
  version "0.10.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/k1LoW/metr/releases/download/v0.10.0/metr_v0.10.0_darwin_amd64.zip"
    sha256 "63e546bba74bda0f13de3e0f04524498fc8cfc8b558013ab1720b76e215f1cac"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/metr/releases/download/v0.10.0/metr_v0.10.0_linux_amd64.tar.gz"
      sha256 "d296babc2dfc8775be144bb4a433797b5ac9dec2be7037d0df034e9ed92366d2"
    end
  end

  def install
    system './metr', 'completion', 'bash', '--out', 'metr.bash'
    system './metr', 'completion', 'zsh', '--out', 'metr.zsh'
    bin.install 'metr'
    bash_completion.install 'metr.bash' => 'metr'
    zsh_completion.install 'metr.zsh' => '_metr'
  end
end
