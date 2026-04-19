class Lines < Formula
  desc "Command line utility to print arbitrary lines of a file"
  homepage "https://github.com/fabiomontefuscolo/lines"
  url "https://github.com/fabiomontefuscolo/lines/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  version "0.1.2"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    (testpath/"test.txt").write("line1\nline2\nline3\n")
    assert_equal "line1", shell_output("#{bin}/lines -n1 #{testpath}/test.txt").strip
  end
end
