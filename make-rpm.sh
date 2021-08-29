#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "${SCRIPT_DIR}"
mkdir -p ./build/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
mkdir -p ./build/rpmbuild/BUILD/{usr,run,etc,var}
mkdir -p ./build/rpmbuild/BUILD/usr/{share,sbin,lib64,lib,bin}
mkdir -p ./build/rpmbuild/BUILD/etc/suricata
mkdir -p ./build/rpmbuild/BUILD/var/{lib,log}/suricata
cp ./build/bin/suricatasc ./build/rpmbuild/BUILD/usr/bin
cp ./build/bin/suricatactl ./build/rpmbuild/BUILD/usr/bin
cp ./build/bin/suricata ./build/rpmbuild/BUILD/usr/sbin
chmod +x ./build/rpmbuild/BUILD/usr/sbin/* ./build/rpmbuild/BUILD/usr/bin/*
cp -rf ./build/lib/python2.7 ./build/rpmbuild/BUILD/usr/lib
cp ./build/lib/libhtp.so.2.0.0 ./build/rpmbuild/BUILD/usr/lib64/
chmod 755 ./build/rpmbuild/BUILD/usr/lib64/libhtp.so.2.0.0
( cd ./build/rpmbuild/BUILD/usr/lib64/ && ln -s libhtp.so.2.0.0 libhtp.so.2)
cp -rf ./build/share/* ./build/rpmbuild/BUILD/usr/share/
cp -rf config/* ./build/rpmbuild/BUILD/etc/suricata/
cp LICENSE ./build/rpmbuild/BUILD/
rpmbuild --define "_topdir ${PWD}/build/rpmbuild" -bb suricata.spec
