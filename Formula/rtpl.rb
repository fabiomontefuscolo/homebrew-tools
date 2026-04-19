class Rtpl < Formula
  desc "Command-line tool for rendering Jinja2 templates with data from various sources"
  homepage "https://github.com/fabiomontefuscolo/rtpl"
  url "https://github.com/fabiomontefuscolo/rtpl/archive/refs/tags/v0.2.tar.gz"
  sha256 "50e771895f7c4ce56611a7185da5b361c2afd8462379c1a1b053bded95772db1"
  version "0.2"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rtpl", shell_output("#{bin}/rtpl --help")
  end
end
