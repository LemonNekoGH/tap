class EasiGen < Formula
  desc "Help users to generate code for easier contract interaction"
  homepage "https://github.com/LemonNekoGH/easinteraction-for-cadence"
  url "https://github.com/LemonNekoGH/easinteraction-for-cadence" , :using => :git , :tag => "v0.0.30"
  license "MIT"
  
  

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X 'main.Version=#{version}'"), "./cmd/easi-gen/main.go"
  end
end
