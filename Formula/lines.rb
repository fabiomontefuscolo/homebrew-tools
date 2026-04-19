class Lines < Formula
  desc "Command line utility to print arbitrary lines of a file"
  homepage "https://github.com/fabiomontefuscolo/lines"
  url "https://github.com/fabiomontefuscolo/lines/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "4ac7b94f520013b75fc731bb6f54ebcf3bf45cb0b5b26c1eacb6fa19c9920c2e"
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
