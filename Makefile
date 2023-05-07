all: tun

tun:
	brewtool --owner borud --repo tun gen --bin tun --desc "multi hop reverse proxy" --name Tun > tun.rb
