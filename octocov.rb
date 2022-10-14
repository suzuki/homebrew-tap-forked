# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octocov < Formula
  desc "octocov is a toolkit for collecting code metrics."
  homepage "https://github.com/k1LoW/octocov"
  version "0.44.0"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k1LoW/octocov/releases/download/v0.44.0/octocov_v0.44.0_darwin_arm64.zip"
      sha256 "335d29e1e249f297fb1817471f0372268db8c915eac6f4b155d4d75a499aad6f"

      def install
        bin.install 'octocov'
        output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'bash')
        (bash_completion/'octocov').write output
        output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'zsh')
        (zsh_completion/'_octocov').write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/octocov/releases/download/v0.44.0/octocov_v0.44.0_darwin_amd64.zip"
      sha256 "57c59949563ae047b9c953a24c225b5eafb3afbf3676f87187ceb14b0c45a474"

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
