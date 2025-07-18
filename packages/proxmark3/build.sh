# Contributor: @s00se
TERMUX_PKG_HOMEPAGE="https://github.com/RfidResearchGroup/proxmark3"
TERMUX_PKG_DESCRIPTION="The Swiss Army Knife of RFID Research - RRG/Iceman repo"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="Marlin Sööse <marlin.soose@esque.ca>"
TERMUX_PKG_VERSION="1:4.20469"
TERMUX_PKG_SRCURL=https://github.com/RfidResearchGroup/proxmark3/archive/refs/tags/v${TERMUX_PKG_VERSION:2}.tar.gz
TERMUX_PKG_SHA256=f867fef69bf7d3ce71b4e62486aeeec0358017ccd7012a00b8d3d59860ca60ed
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libbz2, libc++, liblz4, readline"
TERMUX_PKG_BUILD_IN_SRC="true"
TERMUX_PKG_EXCLUDED_ARCHES="i686, x86_64"

termux_step_post_configure() {
	export LDLIBS="$LDFLAGS"
	export INCLUDES="$CPPFLAGS"
	TERMUX_PKG_EXTRA_MAKE_ARGS="client CC=$CC CXX=$CXX LD=$CXX cpu_arch=$TERMUX_ARCH SKIPREVENGTEST=1 SKIPQT=1 SKIPPTHREAD=1 SKIPGD=1 PLATFORM=PM3GENERIC"
}

termux_step_make_install() {
	install -Dm700 "$TERMUX_PKG_BUILDDIR"/client/proxmark3 "$TERMUX_PREFIX"/bin/proxmark3
	mkdir -p "$TERMUX_PREFIX"/share/proxmark3/
	cp -R "$TERMUX_PKG_BUILDDIR"/client/resources/ "$TERMUX_PREFIX"/share/proxmark3/resources/
	cp -R "$TERMUX_PKG_BUILDDIR"/client/dictionaries/ "$TERMUX_PREFIX"/share/proxmark3/dictionaries/
	cp -R "$TERMUX_PKG_BUILDDIR"/client/pyscripts/ "$TERMUX_PREFIX"/share/proxmark3/pyscripts/
	cp -R "$TERMUX_PKG_BUILDDIR"/client/luascripts/ "$TERMUX_PREFIX"/share/proxmark3/luascripts/
	cp -R "$TERMUX_PKG_BUILDDIR"/client/lualibs/ "$TERMUX_PREFIX"/share/proxmark3/lualibs/
}
