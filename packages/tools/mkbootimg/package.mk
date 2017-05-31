################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="mkbootimg"
PKG_VERSION="8492547"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://source.codeaurora.org/quic/kernel/skales/"
PKG_URL="https://source.codeaurora.org/quic/kernel/skales/snapshot/$PKG_VERSION.tar.xz"
PKG_SOURCE_DIR="$PKG_VERSION*"
PKG_DEPENDS_HOST=""
PKG_SECTION="tools"
PKG_SHORTDESC="mkbootimg: Creates kernel boot images for Android"
PKG_LONGDESC="mkbootimg: Creates kernel boot images for Android"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_host() {
  sed "s|libfdt.so|$TOOLCHAIN/lib/libfdt.so|" -i dtbTool
}

makeinstall_host() {
  cp mkbootimg $TOOLCHAIN/bin/
  cp dtbTool $TOOLCHAIN/bin/
}
