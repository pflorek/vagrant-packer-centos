#!/usr/bin/env bash

sed -i -e 's/%wheel  ALL=(ALL:ALL) ALL/%wheel  ALL=NOPASSWD:ALL/g' /etc/sudoers
