#!/bin.bash

patch thunar/thunar-window.c thunar-window.patch

./autogen.sh \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libexecdir=/usr/lib \
	--localstatedir=/var \
	--disable-static \
	--enable-gio-unix \
	--enable-gudev \
	--enable-exif \
	--enable-pcre \
	--enable-gtk-doc \
	--disable-debug
