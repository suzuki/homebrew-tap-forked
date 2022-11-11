# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octocov < Formula
  desc "octocov is a toolkit for collecting code metrics."
  homepage "https://github.com/k1LoW/octocov"
  version "0.46.0"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k1LoW/octocov/releases/download/v0.46.0/octocov_v0.46.0_darwin_arm64.zip"
      sha256 "59bddcb7552b7686b5c45ae5bbd8bb29538cbfa5f21ca68220b46720c1eb651d"

      def install
        bin.install 'octocov'
        output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'bash')
        (bash_completion/'octocov').write output
        output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'zsh')
        (zsh_completion/'_octocov').write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/octocov/releases/download/v0.46.0/octocov_v0.46.0_darwin_amd64.zip"
      sha256 "b3b97b71837ae5906d7ee12241aa0c81cc25f2ec47c60de235663457d030ebda"

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
