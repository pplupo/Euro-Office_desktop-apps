pkgname=euro-office-desktopeditors
pkgver=M4_PRODUCT_VERSION
pkgrel=1
pkgdesc="Euro-Office Desktop Editors"
arch=('x86_64' 'aarch64')
url="M4_PUBLISHER_URL"
license=('AGPL3')
depends=('glibc' 'qt6-base' 'qt6-declarative' 'qt6-wayland' 'qt6-multimedia')
options=('!strip' '!emptydirs')
source=()

package() {
  mkdir -p "$pkgdir"
  cp -a "$srcdir/../../build/main/opt" "$pkgdir/"
  cp -a "$srcdir/../../build/main/usr" "$pkgdir/"
}
