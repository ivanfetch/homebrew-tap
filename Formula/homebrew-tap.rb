# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HomebrewTap < Formula
  desc "kube-capacity provides an overview of the resource requests, limits, and utilization in a Kubernetes cluster"
  homepage ""
  version "0.5.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ivanfetch/kube-capacity/releases/download/v0.5.1/kube-capacity_0.5.1_Darwin_x86_64.tar.gz"
    sha256 "487b9db040234853ea3b1b4415fe491ee1aa60197b1b5d4a3335f3f97052f79e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ivanfetch/kube-capacity/releases/download/v0.5.1/kube-capacity_0.5.1_Linux_x86_64.tar.gz"
    sha256 "ec847d6765858c25bc07b0ddc9222ced45a7a280a0e00788f6f3c3a65bf21caf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ivanfetch/kube-capacity/releases/download/v0.5.1/kube-capacity_0.5.1_Linux_arm64.tar.gz"
    sha256 "e41fe6c956079fc4633ad29d78bca4f57fefe2cff7b11901337eaac41cead66b"
  end

  def install
    bin.install "kube-capacity"
  end

  test do
    system "#{bin}/kube-capacity version"
  end
end
