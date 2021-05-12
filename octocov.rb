# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octocov < Formula
  desc "octocov is a tool for collecting code coverage and code to test ratio."
  homepage "https://github.com/k1LoW/octocov"
  version "0.6.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/k1LoW/octocov/releases/download/v0.6.0/octocov_v0.6.0_darwin_amd64.zip"
    sha256 "0d2660b29d7bc67793c96cb1004257b56e44fbbe5ec41f022a9956fceb13c571"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/k1LoW/octocov/releases/download/v0.6.0/octocov_v0.6.0_linux_amd64.tar.gz"
    sha256 "ff673c19c3405d60687cc4ba8ff5bf6d9fa4dcff6b4eb29fd3a2fe9d1d54f301"
  end

  def install
    system './octocov', 'completion', 'bash', 'octocov.bash'
    system './octocov', 'completion', 'zsh', 'octocov.zsh'
    bin.install 'octocov'
    bash_completion.install 'octocov.bash' => 'octocov'
    zsh_completion.install 'octocov.zsh' => '_octocov'
  end
end
