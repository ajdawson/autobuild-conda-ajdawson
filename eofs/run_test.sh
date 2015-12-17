#!/bin/bash
#
# Run eofs test suite in its own directory.
#

mkdir eofs-tests && cd eofs-tests || exit 1
nosetests -sv eofs
stat=$?
cd .. && rm -rf eofs-tests || exit 2
exit $stat
