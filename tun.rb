class Tun <  Formula
	desc "multi hop reverse proxy"
	homepage "https://github.com/borud/tun"
	version "0.1.1"

	on_macos do
		if Hardware::CPU.intel?
			url "https://github.com/borud/tun/releases/download/v0.1.1/tun.amd64-macos.zip"
			sha256 "b17b06a012a4eeac262513c211a655315bc4c4868972aa392c13aaf4425cda84"
		end

		if Hardware::CPU.arm?
			url "https://github.com/borud/tun/releases/download/v0.1.1/tun.arm64-macos.zip"			
			sha256 "5e887218cd417161d7fbe327f2d63c86a8e226ea23d32863ab3a1397c57d7d2b"
		end
	end

	on_linux do
		if Hardware::CPU.intel?
			url "https://github.com/borud/tun/releases/download/v0.1.1/tun.amd64-linux.zip"
			sha256 "afd235c23a2db9459ded88617d4928a4ecfa667744dd15ed0277ab33995c44b6"
		end

		if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
			url "https://github.com/borud/tun/releases/download/v0.1.1/tun.arm5-rpi-linux.zip"
			sha256 "721167a7677b5c2c86cb220baba715362629f50cf51d6e84b3699e0bfb7e11ba"
		end
	end

	def install
		bin.install "tun"
	end
end