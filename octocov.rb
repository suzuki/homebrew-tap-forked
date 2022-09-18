# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octocov < Formula
  desc "octocov is a toolkit for collecting code metrics."
  homepage "https://github.com/k1LoW/octocov"
  version "0.42.0"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k1LoW/octocov/releases/download/v0.42.0/octocov_v0.42.0_darwin_arm64.zip"
      sha256 "6f8520a3b13c7fb93bb6d527a459637631fb678b5cbd780c9f414a2ae2e034d3"

      def install
        bin.install 'octocov'
        output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'bash')
        (bash_completion/'octocov').write output
        output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'zsh')
        (zsh_completion/'_octocov').write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/octocov/releases/download/v0.42.0/octocov_v0.42.0_darwin_amd64.zip"
      sha256 "537d01eb616d8bec7d0eab3a5e10250f099036871293afe9144372744a308ec3"

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
