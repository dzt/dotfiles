#! /bin/sh
#
# mount_data.sh
# Copyright (C) 2015 strang3quark <strang3quark@gmail.com>
#
# Distributed under terms of the MIT license.
#

sudo ntfsfix /dev/sda5
sudo mount -t ntfs -o umask=000 /dev/sda5 /media/data
