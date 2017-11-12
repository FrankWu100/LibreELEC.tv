################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="gtk+"
PKG_VERSION="3.22"
PKG_REV="24"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="http://www.gtk.org/"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/gtk+/$PKG_VERSION/$PKG_NAME-$PKG_VERSION.$PKG_REV.tar.xz"
PKG_DEPENDS_TARGET="toolchain atk glib pango gdk-pixbuf libepoxy"
PKG_SECTION="multimedia"
PKG_SHORTDESC="gtk+: The Gimp ToolKit (GTK)"
PKG_LONGDESC="This is GTK+. GTK+, which stands for the Gimp ToolKit, is a library for creating graphical user interfaces for the X Window System. It is designed to be small, efficient, and flexible. GTK+ is written in C with a very object-oriented approach."
PKG_IS_ADDON="no"

PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_path_GLIB_GENMARSHAL=$TOOLCHAIN/bin/glib-genmarshal \
                           --disable-glibtest \
                           --enable-modules \
                           --enable-explicit-deps=no \
                           --disable-debug \
                           --enable-shm \
                           --disable-cups \
                           --disable-papi \
                           --enable-xkb \
                           --disable-xinerama \
                           --disable-gtk-doc \
                           --enable-introspection=no \
                           --with-xinput"

if [ "$DISPLAYSERVER" = "x11" ] ; then
  PKG_DEPENDS_TARGET+=" libX11 libXrandr libXi cairo"
  PKG_CONFIGURE_OPTS_TARGET+=" --enable-x11-backend"
fi

if [ "$DISPLAYSERVER" = "wayland" ] ; then
  PKG_DEPENDS_TARGET+=" wayland"
  PKG_CONFIGURE_OPTS_TARGET+=" --enable-wayland-backend --disable--x11-backend --disable-mir-backend --disable-win32-backend --disable-quartz-backend --disable-broadway-backend" 
fi

#make_target() {
  #make SRC_SUBDIRS="gdk gtk modules"
  #$MAKEINSTALL SRC_SUBDIRS="gdk gtk modules"
#}

makeinstall_target() {
  #make install DESTDIR=$INSTALL SRC_SUBDIRS="gdk gtk modules"
  make install DESTDIR=$SYSROOT_PREFIX
  make install DESTDIR=$INSTALL
}
