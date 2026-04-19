class Lines < Formula
  desc "Command line utility to print arbitrary lines of a file"
  homepage "https://github.com/fabiomontefuscolo/lines"
  url "https://github.com/fabiomontefuscolo/lines/archive/ed1a471ac0ed20ab4a8e37b5198abefa47634053.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  version "0.1.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    (testpath/"test.txt").write("line1\nline2\nline3\n")
    assert_equal "line1", shell_output("#{bin}/lines -n1 #{testpath}/test.txt").strip
  end
end
