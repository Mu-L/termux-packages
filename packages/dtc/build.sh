TERMUX_PKG_HOMEPAGE=https://git.kernel.org/pub/scm/utils/dtc/dtc
TERMUX_PKG_DESCRIPTION="Device Tree Compiler"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.6.0
TERMUX_PKG_SRCURL=https://git.kernel.org/pub/scm/utils/dtc/dtc.git/snapshot/dtc-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=3d15dee7126a6c4a015ab47ec908cab13e39774b0315efaaebb223cb4a4d349c
TERMUX_PKG_BREAKS="dtc-dev"
TERMUX_PKG_REPLACES="dtc-dev"
TERMUX_PKG_EXTRA_MAKE_ARGS="PREFIX=$TERMUX_PREFIX"
TERMUX_PKG_BUILD_IN_SRC=true
