################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2017 Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="simple-gl-evdev"
PKG_VERSION="8fdf352"
PKG_ARCH="any"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/Miouyouyou/simple-gl-evdev"
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain libdrm libevdev $OPENGLES"
PKG_SECTION="multimedia"
PKG_SHORTDESC="simple-gl-evdev: A not-so simple DRM / Evdev / OpenGL ES 2.x moving cursor example"
PKG_LONGDESC="simple-gl-evdev: A not-so simple DRM / Evdev / OpenGL ES 2.x moving cursor example"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CMAKE_OPTS_TARGET="-DCMAKE_BUILD_TYPE=Debug -DCMAKE_C_FLAGS_DEBUG=-DDEBUG"
