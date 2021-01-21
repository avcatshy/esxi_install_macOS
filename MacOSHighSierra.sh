#!/bin/bash

hdiutil create -o /tmp/Sierra.cdr -size 8192m -layout SPUD -fs HFS+J

hdiutil attach /tmp/Sierra.cdr.dmg -noverify -mountpoint /Volumes/install_build

sudo /Applications/Install\ macOS\ High\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/install_build --nointeraction

mv /tmp/Sierra.cdr.dmg ~/Desktop/InstallSystem.dmg

hdiutil detach /Volumes/Install\ macOS\ High\ Sierra/

hdiutil convert ~/Desktop/InstallSystem.dmg -format UDTO -o ~/Desktop/macOS.Sierra.iso

cd ~/Desktop/

mv macOS.Sierra.iso.cdr macOS.HighSierra.iso