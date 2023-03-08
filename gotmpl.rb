# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gotmpl < Formula
  desc "Gotmpl is a command line tool to generate files from template and data files"
  homepage ""
  version "1.0.1"
  license "MIT"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hay-kot/gotmpl/releases/download/v1.0.1/gotmpl_Darwin_arm64.tar.gz"
      sha256 "008624cb63254d0077ae98c48d688bb12d4b740516c43c72a196f66365bc34f4"

      def install
        bin.install "gotmpl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/gotmpl/releases/download/v1.0.1/gotmpl_Darwin_x86_64.tar.gz"
      sha256 "e3764087c3f79d6019066ce65be536c961e8d60e67d887c4af78b63acc8ac24b"

      def install
        bin.install "gotmpl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hay-kot/gotmpl/releases/download/v1.0.1/gotmpl_Linux_arm64.tar.gz"
      sha256 "2ca4fde5e0bea49fa675c0906ddb0ec332a861127321ed1bd6784b9669737410"

      def install
        bin.install "gotmpl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/gotmpl/releases/download/v1.0.1/gotmpl_Linux_x86_64.tar.gz"
      sha256 "8dee45edd88db7710324029f1beb78dd8ab58aa2090ac4fadf1fd58e0d5ed39a"

      def install
        bin.install "gotmpl"
      end
    end
  end

  test do
    system "#{bin}/gotmpl version"
  end
end
