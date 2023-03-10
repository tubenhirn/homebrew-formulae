# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rasic < Formula
  desc "Wrapper for trivy scanner with incident creation."
  homepage ""
  version "1.23.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tubenhirn/rasic/releases/download/v1.23.0/rasic_1.23.0_darwin_arm64.tar.gz"
      sha256 "4089801e1f2417d3f4a99e50a14365bce8b4cda714b2ed7aeab7e470341f2c07"

      def install
        bin.install "darwin_arm64/plugins/reporter/reporter_gitlab"
        bin.install "darwin_arm64/plugins/source/source_gitlab"
        bin.install "darwin_arm64/rasic"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tubenhirn/rasic/releases/download/v1.23.0/rasic_1.23.0_darwin_amd64.tar.gz"
      sha256 "febd06674a3e6b472d3a6c115d72974bbae99c4fee29d06a269b7794c9b95b43"

      def install
        bin.install "darwin_amd64_v1/plugins/reporter/reporter_gitlab"
        bin.install "darwin_amd64_v1/plugins/source/source_gitlab"
        bin.install "darwin_amd64_v1/rasic"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tubenhirn/rasic/releases/download/v1.23.0/rasic_1.23.0_linux_amd64.tar.gz"
      sha256 "c5bc934f44c06bb2c3b443e4123aab4ea45c5f532b29a188566c0cd37d120eb7"

      def install
        bin.install "linux_amd64_v1/plugins/reporter/reporter_gitlab"
        bin.install "linux_amd64_v1/plugins/source/source_gitlab"
        bin.install "linux_amd64_v1/rasic"
      end
    end
  end
end
