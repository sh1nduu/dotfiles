#!/bin/bash
# -*- coding: utf-8 -*-

yum install -y git perl-devel openssl-devel curl-devel expat-devel gettext-devel zlib-devel

GIT=git-2.13.4
wget https://www.kernel.org/pub/software/scm/git/${GIT}.tar.gz
tar zxvf ${GIT}.tar.gz

make -C ${GIT} & make install -C ${GIT}
cp ${GIT}/git /usr/bin/git
