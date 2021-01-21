#!/bin/bash

hdiutil create -o /tmp/Capitan.cdr -size 8192m -layout SPUD -fs HFS+J

hdiutil attach /tmp/Capitan.cdr.dmg -noverify -mountpoint /Volumes/install_build

sudo /Applications/Install\ OS\ X\ El\ Capitan.app/Contents/Resources/createinstallmedia --volume /Volumes/install_build --applicationpath /Applications/Install\ OS\ X\ El\ Capitan.app --nointeraction

mv /tmp/Capitan.cdr.dmg ~/Desktop/InstallSystem.dmg

hdiutil detach /Volumes/Install\ OS\ X\ El\ Capitan/

hdiutil convert ~/Desktop/InstallSystem.dmg -format UDTO -o ~/Desktop/macOS.Capitan.iso

cd ~/Desktop/

mv macOS.Capitan.iso.cdr macOS.EICapitan.iso