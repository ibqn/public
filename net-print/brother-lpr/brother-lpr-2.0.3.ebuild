# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit rpm multilib 

DESCRIPTION="Brother HL-5350DN LPR print drivers with CUPS wrapper."
HOMEPAGE="http://solutions.brother.com/linux/en_us/index.html"
SRC_URI="http://www.brother.com/pub/bsc/linux/dlf/hl5350dnlpr-${PV}-1.i386.rpm"

LICENSE="Brother"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
RESTRICT="mirror strip"

DEPEND="net-print/cups"
RDEPEND="${DEPEND}"


src_install() {
	INSTDIR="usr/local/Brother"

	dobin usr/bin/brprintconflsr2

	use amd64 && has_multilib_profile && ABI=x86
	dolib usr/lib/libbrcomplpr2.so
	
	dodir ${INSTDIR}/{inf,lpd}

	insinto "${INSTDIR}/inf"
	doins usr/local/Brother/inf/{brHL5350DNfunc,brHL5350DNrc,braddprinter,paperinf,setupPrintcap} 

	insinto "${INSTDIR}/lpd"
	doins usr/local/Brother/lpd/{filterHL5350DN,psconvert2,rawtobr2} 

	dodir /var/spool/lpd/HL5350DN
}

