# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit rpm multilib 

DESCRIPTION="Brother HL-5350DN LPR print drivers with CUPS wrapper."
HOMEPAGE="http://solutions.brother.com/linux/en_us/index.html"
SRC_URI="http://www.brother.com/pub/bsc/linux/dlf/cupswrapperHL5350DN-${PV}-1.i386.rpm"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
RESTRICT="mirror strip"

DEPEND="net-print/cups
		>=net-print/brother-lpr-2.0.3"
RDEPEND="${DEPEND}"


src_install() {
	INSTDIR="usr/local/Brother"

	dodir "${INSTDIR}/cupswrapper"
	insinto "${INSTDIR}/cupswrapper"
	doins usr/local/Brother/cupswrapper/{brcupsconfig3,cupswrapperHL5350DN-2.0.4} 
}
