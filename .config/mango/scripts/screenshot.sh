#!/usr/bin/env bash

set -e

slurp | grim -g - - | tee ~/Pictures/screenshots/screenshot_$(date +%s).png | wl-copy && notify-send "Screenshot saved" \ "Image copied to clipboard"
