#! /bin/bash

set -e

cd src
all_dependencies=$(gcc -MM *.c)
cd ..

cd makefile
cp Makefile_template makefile
echo "${all_dependencies}" >> makefile

mv makefile ../src

echo done.
