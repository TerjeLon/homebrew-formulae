class Slimdocc < Formula
  desc "CLI tool for slimming down Swift Docc's that has been transformed for static hosting"
  homepage "https://github.com/TerjeLon/slimdocc"
  url "https://github.com/TerjeLon/slimdocc/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "6f07ed2bdebfa164a25d1ab9abb934be9b67d41ce29cf0dc0084e18bd170101c"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release"
    bin.install ".build/release/slimdocc"
  end

  test do
    system "true"
  end
end
