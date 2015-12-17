#!/bin/bash

# Modify flags for build on osx
if [ `uname` == Darwin ]; then
    export LDFLAGS="-m64 -Wall -g -undefined dynamic_lookup -bundle"
fi

"$PYTHON" setup.py install <<"EOF"
yes
EOF
