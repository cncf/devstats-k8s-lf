#!/bin/bash
# wrong status example:
# org.freedesktop.systemd1               - -               -                (activatable) -                         -
# correct status example
# org.freedesktop.systemd1 1 systemd root :1.4157018 init.scope - -
#sts=`echo 'org.freedesktop.systemd1               - -               -                (activatable) -                         -' | grep org.freedesktop.systemd1 | awk '{print $6}'`
sts=`/usr/bin/busctl --list | grep org.freedesktop.systemd1 | awk '{print $6}'`
#echo $sts
#if [ ! "$sts" = "init.scope" ]
if [ "$sts" = "-" ]
then
  echo "org.freedesktop.systemd1 broken, doing /bin/systemctl daemon-reexec"
  /bin/systemctl daemon-reexec
fi
