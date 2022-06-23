class Slimdocc < Formula
  desc "CLI tool for slimming down Swift Docc's that has been transformed for static hosting"
  homepage "https://github.com/TerjeLon/slimdocc"
  url "https://github.com/TerjeLon/slimdocc/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "80f47f5e892f36a0312d23f788ceaf362969729be96b4cd8e60e945e9ed9b9f1"
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
