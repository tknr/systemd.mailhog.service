#!/bin/bash -x
cd `dirname $0`
cp -f mailhog.service /etc/systemd/system/
