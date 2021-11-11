SPK_NAME = foggy-backend
SPK_VERS = 0.1.2.2
SPK_REV = 0
SPK_ICON = src/foggy-backend.png

PIP = $(WORK_DIR)/../../../native/python3/work-native/install/usr/local/bin/pip
BUILD_DEPENDS = native/python3

WHEELS = src/requirements.txt
SPK_DEPENDS = "python38"

MAINTAINER = e9wikner
DESCRIPTION = "Foggy keeps photos and videos shot with a smartphone in sync between devices. It does so without requiring a separate app to delete, update or add files. On an iPhone you will install the app and keep on using the built-in Photos app to edit and sort your photos and videos. When space gets low on the device you move the photos to an archive on the backend and clear the phone memory knowing that you have copies on the server."
DISPLAY_NAME = foggy-backend

CHANGELOG = "0.1.2 initial version"

HOMEPAGE = https://gitlab.com/e9wikner/foggy
LICENSE = Apache-2.0

SERVICE_SETUP = src/service-setup.sh
SERVICE_PORT = 21210
SERVICE_PORT_TITLE = $(DISPLAY_NAME)
ADMIN_PORT = $(SERVICE_PORT)

STARTABLE = yes

SPK_USR_LOCAL_LINKS = bin:env/bin/foggy

# Pure Python package, make sure ARCH is not defined
override ARCH=

include ../../mk/spksrc.spk.mk
