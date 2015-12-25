#!/bin/sh

case `uname` in 
    
    Darwin*) 
        glibtoolize ;;
    
    *) 
    libtoolize;; 
esac

export PKG_CONFIG_PATH="/opt/local/lib/pkgconfig:/usr/local/lib/pkgconfig"

aclocal
autoconf
autoheader
automake -a -c
autoreconf -i
./configure --disable-dependency-tracking


