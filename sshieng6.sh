#!/bin/bash

usr="lnowakow@ieng6.ucsd.edu"
sdir="/home/linux/ieng6/oce/8m/lnowakow"
ddir="$HOME/ieng6"
cmd="$usr:$sdir $ddir"

echo "sshfs $cmd"
sshfs lnowakow@ieng6.ucsd.edu:/home/linux/ieng6/oce/8m/lnowakow ~/ieng6
