#!/bin/sh

# Package
PACKAGE="foggy-backend"
DNAME="Foggy Backend"

# Others
CONFIG_SOURCE="${SYNOPKG_PKGDEST}/etc/avahi/services/${PACKAGE}.service"
CONFIG_TARGET="/etc/avahi/services/${PACKAGE}.service"

preinst ()
{
    exit 0
}

postinst ()
{
    echo "Activating ${DNAME} avahi service"
    cp -v ${CONFIG_SOURCE} ${CONFIG_TARGET}
    exit 0
}

preuninst ()
{
    exit 0
}

postuninst ()
{
    echo "Inactivating ${DNAME} avahi service"
    rm -f ${CONFIG_TARGET}
    exit 0
}

preupgrade ()
{
    exit 0
}

postupgrade ()
{
    exit 0
}
