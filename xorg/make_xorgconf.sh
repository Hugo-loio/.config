#!/bin/sh
repo=$(dirname $0)

#1st arg: target file ; 2nd arg: source file
create_symlic(){
  if [ -f $1 ] || [ -h $1 ] ; then
    echo "Replaced" $1
    rm $1
  else
    echo "Created" $1
  fi
  ln -sr $2 $1
}

#Xorg
create_symlic /etc/X11/xorg.conf.d/70-synaptics.conf $repo/70-synaptics.conf 



