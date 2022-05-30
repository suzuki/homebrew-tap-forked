# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runn < Formula
  desc "runn is a tool for running operations following a scenario."
  homepage "https://github.com/k1LoW/runn"
  version "0.18.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k1LoW/runn/releases/download/v0.18.1/runn_v0.18.1_darwin_arm64.zip"
      sha256 "03a9c923f8a4e59ca73e9cbe20b1e1b2e8acda5ed7f1a41f8cd19d817854f0c4"

      def install
        bin.install 'runn'
        output = Utils.safe_popen_read("#{bin}/runn", 'completion', 'bash')
        (bash_completion/'runn').write output
        output = Utils.safe_popen_read("#{bin}/runn", 'completion', 'zsh')
        (zsh_completion/'_runn').write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/runn/releases/download/v0.18.1/runn_v0.18.1_darwin_amd64.zip"
      sha256 "0a839c0e5fc13e43cd89bd1a49dc332d6965073cfdfbb2c5092475d05fa9ad4c"

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
      url "https://github.com/k1LoW/runn/releases/download/v0.18.1/runn_v0.18.1_linux_amd64.tar.gz"
      sha256 "2bf8f0ddb6714969255ab60cb4d299f2e6375fe7a6b7f7146ad7a0c5211412f5"

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
