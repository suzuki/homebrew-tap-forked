# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octocov < Formula
  desc "octocov is a tool for collecting code metrics."
  homepage "https://github.com/k1LoW/octocov"
  version "0.28.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/octocov/releases/download/v0.28.1/octocov_v0.28.1_darwin_amd64.zip"
      sha256 "0bdf96de62f269865061d66b302f5d107e24f945d33173ff9bbc814c9936d7b4"

      def install
        bin.install 'octocov'
        output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'bash')
        (bash_completion/'octocov').write output
        output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'zsh')
        (zsh_completion/'_octocov').write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/octocov/releases/download/v0.28.1/octocov_v0.28.1_linux_amd64.tar.gz"
      sha256 "3f219dc390c3b080e474c7effb7bdae2dfb49b841ddcd3edb9c0bbb65db84a3b"

      def install
        bin.install 'octocov'
        output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'bash')
        (bash_completion/'octocov').write output
        output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'zsh')
        (zsh_completion/'_octocov').write output
      end
    end
  end
end
