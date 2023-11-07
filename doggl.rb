# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Doggl < Formula
  desc "Simple toggl client for work time tracking."
  homepage ""
  version "1.6.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tubenhirn/doggl/releases/download/v1.6.16/doggl_1.6.16_darwin_arm64.tar.gz"
      sha256 "073f0db521610867367d762f9d4ad03d2bacc0886515468c062738b1a1840fe5"

      def install
        bin.install "darwin_arm64/doggl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tubenhirn/doggl/releases/download/v1.6.16/doggl_1.6.16_darwin_amd64.tar.gz"
      sha256 "24178c55258b5c0b3b3c3b46c4980e28a647fb8aed94c6d8f23c03fec1bbaef5"

      def install
        bin.install "darwin_amd64_v1/doggl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tubenhirn/doggl/releases/download/v1.6.16/doggl_1.6.16_linux_amd64.tar.gz"
      sha256 "148469b7faf40c3decf04e2776c844395cee320507924cd69400aaab26f272e1"

      def install
        bin.install "linux_amd64_v1/doggl"
      end
    end
  end
end
