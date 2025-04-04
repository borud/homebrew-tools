
class Tun <  Formula
	desc "multi hop reverse proxy"
	homepage "https://github.com/borud/tun"
	version "0.1.7"

	on_macos do
		if Hardware::CPU.intel?
			url "https://github.com/borud/tun/releases/download/v0.1.7/tun.amd64-macos.zip"
			sha256 "359051d78224402906900ce06317da0727da4d2963d8bca0fc4241fa40c7a063"
		end

		if Hardware::CPU.arm?
			url "https://github.com/borud/tun/releases/download/v0.1.7/tun.arm64-macos.zip"
			sha256 "f88e02858aecd62e72a650e19fc2833bdda500cf65a071f7c78f101c614c01b1"
		end
	end

	def install
		bin.install "tun"
	end
end
