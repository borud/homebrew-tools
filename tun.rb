
class Tun <  Formula
	desc "multi hop reverse proxy"
	homepage "https://github.com/borud/tun"
	version "0.1.3"

	on_macos do
		if Hardware::CPU.intel?
			url "https://github.com/borud/tun/releases/download/v0.1.3/tun.amd64-macos.zip"
			sha256 "ebbdaa4e84b5a4933f1983e0f6e6f5b7cb34eaa9cc8749198b65f1c9f98c478a"
		end

		if Hardware::CPU.arm?
			url "https://github.com/borud/tun/releases/download/v0.1.3/tun.arm64-macos.zip"
			sha256 "18c0635461b55efc3c6b53f009d6f16dbb8755cf8bf440daa21ff86fd403afd2"
		end
	end

	def install
		bin.install "tun"
	end
end
