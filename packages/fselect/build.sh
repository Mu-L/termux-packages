TERMUX_PKG_HOMEPAGE=https://github.com/jhspetersson/fselect
TERMUX_PKG_DESCRIPTION="Find files with SQL-like queries"
TERMUX_PKG_LICENSE="Apache-2.0, MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=0.7.5
TERMUX_PKG_SRCURL=https://github.com/jhspetersson/fselect/archive/$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=bee5cddfbd5ec254d0d8ec5e045618829d775084d00b8bcf353418beeb31a439
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_post_make_install() {
	install -Dm700 \
		"$TERMUX_PKG_SRCDIR/target/$CARGO_TARGET_NAME"/release/fselect \
		"$TERMUX_PREFIX"/bin/fselect
}
