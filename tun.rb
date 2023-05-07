
class Tun <  Formula
	desc "multi hop reverse proxy"
	homepage "https://github.com/borud/tun"
	version "0.1.2"

	on_macos do
		if Hardware::CPU.intel?
			url "https://github.com/borud/tun/releases/download/v0.1.2/tun.amd64-macos.zip"
			sha256 "57872ad5a12310d4f7fe972c66921357fb653c12c60c44294026ea314e529b51"
		end

		if Hardware::CPU.arm?
			url "https://github.com/borud/tun/releases/download/v0.1.2/tun.arm64-macos.zip"
			sha256 "e233a9b8da8308836a7495b135dc1586e520330865cb2b8fae9b94ea4461a0e9"
		end
	end

	def install
		bin.install "tun"
	end
end
