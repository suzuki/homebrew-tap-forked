# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runn < Formula
  desc "runn is a tool for running operations following a scenario."
  homepage "https://github.com/k1LoW/runn"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k1LoW/runn/releases/download/v0.6.0/runn_v0.6.0_darwin_arm64.zip"
      sha256 "45c06ee4071c0dcc69b273a1a9893d572261fc19730cc9609a854f7084629bce"

      def install
        bin.install 'runn'
        output = Utils.safe_popen_read("#{bin}/runn", 'completion', 'bash')
        (bash_completion/'runn').write output
        output = Utils.safe_popen_read("#{bin}/runn", 'completion', 'zsh')
        (zsh_completion/'_runn').write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/runn/releases/download/v0.6.0/runn_v0.6.0_darwin_amd64.zip"
      sha256 "7b86292b52fd6d4b33a4864c916e6ce677639e3ea1e540b36e50709884965dfd"

      def install
        bin.install 'runn'
        output = Utils.safe_popen_read("#{bin}/runn", 'completion', 'bash')
        (bash_completion/'runn').write output
        output = Utils.safe_popen_read("#{bin}/runn", 'completion', 'zsh')
        (zsh_completion/'_runn').write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/runn/releases/download/v0.6.0/runn_v0.6.0_linux_amd64.tar.gz"
      sha256 "a9a096c602560f943f14bf0bd821eb0e3d129b4965a121e720d73d75111065cd"

      def install
        bin.install 'runn'
        output = Utils.safe_popen_read("#{bin}/runn", 'completion', 'bash')
        (bash_completion/'runn').write output
        output = Utils.safe_popen_read("#{bin}/runn", 'completion', 'zsh')
        (zsh_completion/'_runn').write output
      end
    end
  end
end
