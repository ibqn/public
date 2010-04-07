# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit gnome2-utils

DESCRIPTION="Elementary Icons for Humans."
HOMEPAGE="https://launchpad.net/humanity"
SRC_URI="https://launchpad.net/${PN%%-*}/${PV%.*}/${PV%.*}/+download/${PN%%-*}_${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	>=x11-themes/gnome-icon-theme-2.24.0
	>=x11-themes/hicolor-icon-theme-0.10"
#	>=x11-misc/icon-naming-utils-0.8.90
#	media-gfx/imagemagick
#	>=gnome-base/librsvg-2.26.0
#	>=x11-themes/hicolor-icon-theme-0.10"
DEPEND="${RDEPEND}"
#	dev-util/pkgconfig
#	dev-util/intltool
#	sys-devel/gettext"

S="${WORKDIR}/humanity_${PV}"
RESTRICT="binchecks mirror strip"

src_install() {
	insinto /usr/share/icons
	doins -r *
}

#pkg_preinst() { gnome2_icon_savelist; }
#pkg_postinst() { gnome2_icon_cache_update; }
#pkg_postrm() { gnome2_icon_cache_update; }

