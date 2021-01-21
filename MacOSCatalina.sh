#!/bin/bash

hdiutil create -o /tmp/Catalina.cdr -size 8192m -layout SPUD -fs HFS+J

hdiutil attach /tmp/Catalina.cdr.dmg -noverify -mountpoint /Volumes/install_build

sudo /Applications/Install\ macOS\ Catalina.app/Contents/Resources/createinstallmedia --volume /Volumes/install_build --nointeraction

mv /tmp/Catalina.cdr.dmg ~/Desktop/InstallSystem.dmg

hdiutil detach /Volumes/Install\ macOS\ Catalina/

hdiutil convert ~/Desktop/InstallSystem.dmg -format UDTO -o ~/Desktop/macOS.Catalina.iso

cd ~/Desktop/

mv macOS.Catalina.iso.cdr macOS.Catalina.iso
