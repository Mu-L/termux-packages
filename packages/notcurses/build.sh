TERMUX_PKG_HOMEPAGE=https://notcurses.com/
TERMUX_PKG_DESCRIPTION="blingful TUIs and character graphics"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="3.0.15"
TERMUX_PKG_SRCURL=https://github.com/dankamongmen/notcurses/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=e811c24784559363d311c08caa74a0f7e7138e4ac8e8f6f51cbf6c565e363811
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="ffmpeg, libandroid-spawn, libc++, libunistring, ncurses, zlib"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DUSE_DOCTEST=OFF
-DUSE_DEFLATE=OFF
-DUSE_PANDOC=OFF
-DUSE_STATIC=OFF
"

termux_step_pre_configure() {
	LDFLAGS+=" -landroid-spawn -lm"
}
