################################################################################
#
# xrdp
#
################################################################################

XRDP_VERSION = 0.8.0
XRDP_SOURCE = v$(XRDP_VERSION).tar.gz
XRDP_SITE = https://github.com/neutrinolabs/xrdp/archive
XRDP_LICENSE = Apache-2.0
XRDP_LICENSE_FILES = COPYING

XRDP_DEPENDENCIES = xlib_libX11 xlib_libXfixes xlib_libXrandr openssl jpeg-turbo
XRDP_CONF_OPTS = --enable-nopam --enable-jpeg
XRDP_AUTORECONF = YES
#XRDP_AUTORECONF_OPTS = -fvi

$(eval $(autotools-package))
