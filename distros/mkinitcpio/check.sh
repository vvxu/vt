#!/bin/sh
#************************************************************************************
# Copyright (c) 2020, longpanda <admin@ventoy.net>
# 
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation; either version 3 of the
# License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, see <http://www.gnu.org/licenses/>.
# 
#************************************************************************************

vtoy_check_mkinitcpio() {
    if which mkinitcpio >/dev/null 2>&1; then
        
		for vtfile in '/etc/mkinitcpio.conf' '/usr/lib/initcpio/install/lvm2'; do
			if ! [ -f $vtfile ]; then
				[ -z "1" ]; return
			fi
		done
        
        [ -n "1" ]
    else
        [ -z "1" ]
    fi
}
