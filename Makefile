all:
	@docker run --rm \
		-e EXPORT_SRC=1 \
		-e EXPORT_PKG=1 \
		-v $$PWD:/pkg \
		-v /etc/pacman.d/mirrorlist:/etc/pacman.d/mirrorlist:ro \
		whynothugo/makepkg

clean:
	@rm -rf *.pkg.tar.zst src pkg navicat-keygen