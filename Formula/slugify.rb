class Slugify < Formula
  desc "Convert text into URL-friendly slugs"
  homepage "https://github.com/fabiomontefuscolo/slugify"
  url "https://github.com/fabiomontefuscolo/slugify/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "cde29c6f360aa3eaee6960064231f77b644e804a4be2c256903cdf7ac029c0a0"
  version "0.1.1"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_equal "hello-world", shell_output("#{bin}/slugify Hello World").strip
  end
end
