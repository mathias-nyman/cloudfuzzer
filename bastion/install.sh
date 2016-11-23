#!/bin/bash

set -o errexit
set -o nounset

##
##Bastion install script.
##

#shell scripts here


mkdir -p $HOME/.ssh;
mv /tmp/bastion-key $HOME/.ssh/id_rsa
chmod 600 $HOME/.ssh/id_rsa
cat /tmp/fuzzvm-key.pub >> $HOME/.ssh/authorized_keys

mv /tmp/scripts $HOME/
