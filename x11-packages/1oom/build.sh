TERMUX_PKG_HOMEPAGE=https://github.com/1oom-fork/1oom
TERMUX_PKG_DESCRIPTION="A Master of Orion (1993) game engine recreation"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.11.4"
TERMUX_PKG_SRCURL=https://github.com/1oom-fork/1oom/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=295e250d09b486b0e032b50c6e68b06a890a795cc5fe774de77a6fe860c2316a
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_VERSION_REGEXP='\d+\.\d+(\.\d+)?'
TERMUX_PKG_DEPENDS="libandroid-shmem, libsamplerate, libx11, libxext, readline"
TERMUX_PKG_BUILD_DEPENDS="xorgproto"
TERMUX_PKG_GROUPS="games"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-static
--disable-uiclassic
--disable-hwsdl1
--disable-hwsdl1audio
--disable-hwsdl1gl
--disable-hwsdl2
--disable-hwsdl2audio
--disable-hwalleg4
"

termux_step_pre_configure() {
	autoreconf -fi
	LIBS='-landroid-shmem'
}
