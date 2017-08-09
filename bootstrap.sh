#!/bin/bash
# -*- coding: utf-8 -*-

# Compatible CentOS 6.5

TMP='tmp'

if ! [ -d ${TMP} ]; then
  mkdir $TMP
fi

yum install -y tmux wget

# Enable epel repo
if ! [ -f "${TMP}/epel-release-6-8.noarch.rpm" ]; then
  wget -P ${TMP}/ http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
  rpm -ivh ${TMP}/epel-release-6-8.noarch.rpm
fi

sh install_git.sh
sh install_neovim.sh

# Install plugin manager for vim
if ! [ -f "${TMP}/installer.sh" ]; then
  wget -P ${TMP}/ https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh
  source ${TMP}/installer.sh $HOME/.dein
fi

yum install -y the_silver_searcher

