class Slugify < Formula
  desc "Convert text into URL-friendly slugs"
  homepage "https://github.com/fabiomontefuscolo/slugify"
  url "https://github.com/fabiomontefuscolo/slugify/archive/77f41fb006b39cec35668ace9e2561b86b772a7e.tar.gz"
  sha256 "187c2c6560b5bbf4f33c94d5f3d59fba84d05a8e9b72f954b5c18c68f82259a8"
  version "0.1.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_equal "hello-world", shell_output("#{bin}/slugify Hello World").strip
  end
end
