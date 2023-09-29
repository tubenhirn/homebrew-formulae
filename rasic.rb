# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rasic < Formula
  desc "Wrapper for trivy scanner with incident creation."
  homepage ""
  version "1.23.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tubenhirn/rasic/releases/download/v1.23.10/rasic_1.23.10_darwin_arm64.tar.gz"
      sha256 "7036f7d3b0915748a978a61f899b72d6a63de77d6161e7287b8edd3e3a6c9ba7"

      def install
        bin.install "darwin_arm64/plugins/reporter/reporter_gitlab"
        bin.install "darwin_arm64/plugins/source/source_gitlab"
        bin.install "darwin_arm64/rasic"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tubenhirn/rasic/releases/download/v1.23.10/rasic_1.23.10_darwin_amd64.tar.gz"
      sha256 "ac595527e7e25f6900d3cf082c4f304de5034f4ea0cfb4b479b8cebc5bf4f8a1"

      def install
        bin.install "darwin_amd64_v1/plugins/reporter/reporter_gitlab"
        bin.install "darwin_amd64_v1/plugins/source/source_gitlab"
        bin.install "darwin_amd64_v1/rasic"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tubenhirn/rasic/releases/download/v1.23.10/rasic_1.23.10_linux_amd64.tar.gz"
      sha256 "52a67eba3d096f6e8f3ad044571f9979aefb99a466d53f7742167c919020b956"

      def install
        bin.install "linux_amd64_v1/plugins/reporter/reporter_gitlab"
        bin.install "linux_amd64_v1/plugins/source/source_gitlab"
        bin.install "linux_amd64_v1/rasic"
      end
    end
  end
end
