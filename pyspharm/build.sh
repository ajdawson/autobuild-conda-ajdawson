#!/bin/bash

# Modify flags for build on osx
if [ `uname` == Darwin ]; then
    export LDFLAGS="-static /usr/local/lib/gcc/x86_64-apple-darwin13.3.0/4.9.1/libquadmath.a -m64 -Wall -g -undefined dynamic_lookup -bundle -static-libgcc -static-libgfortran"
fi

"$PYTHON" setup.py install <<"EOF"
yes
EOF
