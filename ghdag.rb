# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghdag < Formula
  desc "ghdag is a tiny workflow engine for GitHub issue and pull request."
  homepage "https://github.com/k1LoW/ghdag"
  version "0.15.1"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/k1LoW/ghdag/releases/download/v0.15.1/ghdag_v0.15.1_darwin_amd64.zip"
    sha256 "ad408af44af50320ea248206da878883147bfad8af56d24c0ccbe8401448c229"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/k1LoW/ghdag/releases/download/v0.15.1/ghdag_v0.15.1_linux_amd64.tar.gz"
    sha256 "dfeb6b9274ea4c8ea67f74f89b17dfec8b78d72e62e8a4e80c53e862c4f3987b"
  end

  def install
    bin.install "ghdag"
  end
end
