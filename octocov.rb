# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octocov < Formula
  desc "octocov is a toolkit for collecting code metrics."
  homepage "https://github.com/k1LoW/octocov"
  version "0.47.3"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k1LoW/octocov/releases/download/v0.47.3/octocov_v0.47.3_darwin_arm64.zip"
      sha256 "3781ad9d8294b86e4f007fcbf933d756e0ef490d246bfac1f0163fbbd65d3411"

      def install
        bin.install 'octocov'
        output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'bash')
        (bash_completion/'octocov').write output
        output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'zsh')
        (zsh_completion/'_octocov').write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/octocov/releases/download/v0.47.3/octocov_v0.47.3_darwin_amd64.zip"
      sha256 "1d8c64a021a61db106134b691dc87d3da2b65421503b9a06433258c4d2f1c7c2"

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
