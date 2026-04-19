class Rtpl < Formula
  desc "Command-line tool for rendering Jinja2 templates with data from various sources"
  homepage "https://github.com/fabiomontefuscolo/rtpl"
  url "https://github.com/fabiomontefuscolo/rtpl/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "2b00769c2c8acfa923cf25f3812dcec2ee8a4a41d32fcaa31ff95d1ecdf1b7f5"
  version "0.2.3"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rtpl", shell_output("#{bin}/rtpl --help")
  end
end
