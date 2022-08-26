#!/bin/bash

URL="https://discordapp.com/api/download/canary?platform=linux&format=tar.gz"
FILENAME=discord-canary.tar.gz

# get discord canary
cd /tmp
mkdir discord-canary
cd discord-canary
wget -O $FILENAME  $URL
tar xvf $FILENAME
# get OpenAsar
wget -O DiscordCanary/resources/app.asar "https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar"
# install
mkdir /usr/share/discord-canary
mv DiscordCanary/* /usr/share/discord-canary
# clean up
rm -r /tmp/discord-canary
