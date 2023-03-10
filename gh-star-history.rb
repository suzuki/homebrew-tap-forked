# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GhStarHistory < Formula
  desc "Show star history of repositories."
  homepage "https://github.com/k1LoW/gh-star-history"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k1LoW/gh-star-history/releases/download/v0.2.0/gh-star-history_v0.2.0_darwin_arm64.zip"
      sha256 "17a6c05d672cd9b5ab0c667c8b733d673e01f7533420f3d38d58e78dc7ff03d5"

      def install
        bin.install "gh-star-history"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/gh-star-history/releases/download/v0.2.0/gh-star-history_v0.2.0_darwin_amd64.zip"
      sha256 "04e6bee5a4a3fa9d80a04fc16a61d87a7db58a869309c17e4cfda1a4d0bd65e7"

      def install
        bin.install "gh-star-history"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/k1LoW/gh-star-history/releases/download/v0.2.0/gh-star-history_v0.2.0_linux_amd64.tar.gz"
      sha256 "707e00648989db00390767bd47f5b667860a2366d5192fdf089dd137a8c29e4f"

      def install
        bin.install "gh-star-history"
      end
    end
  end
end
