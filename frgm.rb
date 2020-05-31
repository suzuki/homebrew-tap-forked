# This file was generated by GoReleaser. DO NOT EDIT.
class Frgm < Formula
  desc "frgm is a meta snippet (fragment) manager."
  homepage "https://github.com/k1LoW/frgm"
  version "0.7.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/k1LoW/frgm/releases/download/v0.7.1/frgm_v0.7.1_darwin_amd64.zip"
    sha256 "1322e78e0ce0fab867e5fbdd6425b18ef1e67f5c1e05d3fbc8ccf3d02731b424"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/frgm/releases/download/v0.7.1/frgm_v0.7.1_linux_amd64.tar.gz"
      sha256 "dcddab9e75dd92de0a1270c1c4d53c47ab4f0230c638f24915564f31e523e8b9"
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
