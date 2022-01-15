# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octocov < Formula
  desc "octocov is a toolkit for collecting code metrics."
  homepage "https://github.com/k1LoW/octocov"
  version "0.33.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/octocov/releases/download/v0.33.0/octocov_v0.33.0_darwin_amd64.zip"
      sha256 "c33c89fe3de7d61bdcd3d1fc8667ee3f003aba30ee3bc4d88939f80f1c509100"

      def install
        bin.install 'octocov'
        output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'bash')
        (bash_completion/'octocov').write output
        output = Utils.safe_popen_read("#{bin}/octocov", 'completion', 'zsh')
        (zsh_completion/'_octocov').write output
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/k1LoW/octocov/releases/download/v0.33.0/octocov_v0.33.0_darwin_arm64.zip"
      sha256 "f8d93ef556d7897af23d76c328a8bd599a95864103ce2e2acfa8038530bf97ec"

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
      url "https://github.com/k1LoW/octocov/releases/download/v0.33.0/octocov_v0.33.0_linux_amd64.tar.gz"
      sha256 "0eb9dd0ae97266cb11ec74daf8b8dfccfaf2ce19796980e115d70b9509ad41d1"

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
