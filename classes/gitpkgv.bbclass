# gitpkgv.bbclass provides a GITPKGV variable which is a sortable version
# with the format NN+GITHASH, to be used in PKGV, where
#
# NN equals the total number of revs up to SRCREV
# GITHASH is SRCREV's (full) hash
#
# gitpkgv.bbclass assumes the git repository has been cloned, and contains
# SRCREV. So ${GITPKGV} should never be used in PV, only in PKGV.
# It can handle SRCREV = ${AUTOREV}, as well as SRCREV = "<some fixed git hash>"
#
# use example:
#
# inherit gitpkgv
#
# PV = "1.0+git${SRCPV}"
# PKGV = "1.0+git${GITPKGV}"

SRCREV = "${AUTOREV}"
GITPKGV = "${SRCREV}"