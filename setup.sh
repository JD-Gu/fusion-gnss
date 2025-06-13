#!/usr/bin/env bash
set -e

# Install required Python packages
pip install matplotlib

# Compile C source into a shared library
mkdir -p src/csrc

gcc -shared -fPIC src/csrc/fusion.c -o src/csrc/libfusion.so
