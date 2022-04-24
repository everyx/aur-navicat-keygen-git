# Maintainer: Gavin Luo <lunt.luo#gmail.com>

pkgname=navicat-keygen-git
_pkgname=navicat-keygen
pkgver=6.1.8b11ff4
pkgrel=1
pkgdesc="Navicat Keygen"
arch=('any')
url="https://github.com/lzscxb/navicat-keygen"
license=('LGPL')
conflicts=('navicat-keygen')
provides=('navicat-keygen' 'navicat-keygen')
makedepends=('gcc>=7.1' 'make' 'capstone' 'keystone' 'rapidjson' 'openssl')
source=("${_pkgname}::git+https://github.com/lzscxb/navicat-keygen.git#branch=linux")
sha512sums=("SKIP")

pkgver() {
    cd "$srcdir/$_pkgname" || return
    printf "%s.%s" "$(git describe --tags "$(git rev-list --tags --max-count=1)")" "$(git rev-parse --short HEAD)"
}

build() {
    cd "$srcdir/$_pkgname" || return
    make all
}

package() {
    cd "$srcdir/$_pkgname" || return
    install -Dm755 ./bin/* -t "$pkgdir"/usr/bin/
}
