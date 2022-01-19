#!/bin/bash -xe

ARTIFACTS_DIR="${ARTIFACTS_DIR:=exported-artifacts}"

mkdir -p $ARTIFACTS_DIR

rpmbuild --define "%_topdir `pwd`" -ba test-source/test.spec
cp RPMS/x86_64/*.x86_64.rpm $ARTIFACTS_DIR/
cp SRPMS/*.src.rpm $ARTIFACTS_DIR/
