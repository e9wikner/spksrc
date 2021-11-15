
PYTHON_DIR="/var/packages/python38/target/bin"
PATH="${SYNOPKG_PKGDEST}/bin:${SYNOPKG_PKGDEST}/env/bin:${PYTHON_DIR}:${PATH}"
VIRTUALENV="${PYTHON_DIR}/python3 -m venv"
PIP=${SYNOPKG_PKGDEST}/env/bin/pip3

SERVICE_COMMAND="${SYNOPKG_PKGDEST}/env/bin/foggy --disable-mdns"
SVC_BACKGROUND=y
SVC_WRITE_PID=y

GROUP="sc-download"

service_postinst ()
{
    # Create a Python virtualenv
    ${VIRTUALENV} --system-site-packages ${SYNOPKG_PKGDEST}/env

    # Install the wheels
    wheelhouse=${SYNOPKG_PKGDEST}/share/wheelhouse
    ${PIP} install --no-deps --no-index --upgrade --force-reinstall --find-links ${wheelhouse} ${wheelhouse}/*.whl

    # Log installation information
    echo "Installed version: $(${SYNOPKG_PKGDEST}/env/bin/foggy version 2>&1)"
    echo "Installed python modules:"
    ${PIP} freeze
}

