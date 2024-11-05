#!/bin/bash
rm -rf apt-repo/
mkdir -p apt-repo/{conf,incoming}

cat <<EOF >> apt-repo/conf/distributions
Origin: Foo
Label: Foo Github
Suite: stable
Codename: bionic
Architectures: amd64
Components: main
Description: Debian x64 github repository
EOF

###mkdir -p apt-repo/dists/stable/main/binary-amd64
###mkdir -p apt-repo/pool/main/
mv materialgram.deb apt-repo/incoming/materialgram_5.7.0.1_amd64.deb

cd apt-repo

###dpkg-scanpackages --arch amd64 pool/ > dists/stable/main/binary-amd64/Package
###cat dists/stable/main/binary-amd64/Package | gzip -9 > dists/stable/main/binary-amd64/Packages.gz

reprepro -V \
    --section utils \
    --component main \
    --priority 0 \
    includedeb bionic incoming/materialgram_5.7.0.1_amd64.deb
