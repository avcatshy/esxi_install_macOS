#!/bin/bash

hdiutil create -o /tmp/Mojave.cdr -size 8192m -layout SPUD -fs HFS+J

hdiutil attach /tmp/Mojave.cdr.dmg -noverify -mountpoint /Volumes/install_build

sudo /Applications/Install\ macOS\ Mojave.app/Contents/Resources/createinstallmedia --volume /Volumes/install_build --nointeraction

mv /tmp/Mojave.cdr.dmg ~/Desktop/InstallSystem.dmg

hdiutil detach /Volumes/Install\ macOS\ Mojave/

hdiutil convert ~/Desktop/InstallSystem.dmg -format UDTO -o ~/Desktop/macOS.Mojave.iso

cd ~/Desktop/

mv macOS.Mojave.iso.cdr macOS.Mojave.iso