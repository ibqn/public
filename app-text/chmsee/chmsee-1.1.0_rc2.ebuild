# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

inherit cmake-utils

MY_P="${P/_/-}"

DESCRIPTION="HTML Help viewer for Unix/Linux"
HOMEPAGE="http://chmsee.googlecode.com"
SRC_URI="${HOMEPAGE}/files/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-libs/glib-2.8:2
	dev-libs/libxml2
	>=x11-libs/gtk+-2.16:2
	dev-libs/chmlib
	dev-libs/libgcrypt
	>=net-libs/xulrunner-1.9.2"
DEPEND="${RDEPEND}
	sys-devel/gettext
	>=dev-util/intltool-0.37"

S=${WORKDIR}/${MY_P}

#PATCHES=("${FILESDIR}/${P}-linker-cxx.patch")
RESTRICT="mirror"
DOCS="NEWS* README* AUTHORS ChangeLog*"
