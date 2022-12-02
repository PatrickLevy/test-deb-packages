#!/bin/bash

# Build
printf "\nBuilding levy-test-package-1 deb package...\n"
dpkg-deb --build --root-owner-group levy-test-package-1

# Name
printf "\nRenaming package according to conventions...\n"
dpkg-name -o "levy-test-package-1.deb"

# Build
printf "\nBuilding levy-test-package-2 deb package...\n"
dpkg-deb --build --root-owner-group levy-test-package-2

# Name
printf "\nRenaming package according to conventions...\n"
dpkg-name -o "levy-test-package-2.deb"
