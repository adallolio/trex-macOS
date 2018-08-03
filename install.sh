#!/bin/bash
#
# @author Alberto Dallolio <albydallo@gmail.com>
# @2018

cp /root/misc/build.xml /root/europa/
cp /root/misc/SWIGRules /root/europa/src/PLASMA/
cd /root/europa/
ant
ant dist
cd /root/trex.build/
cmake ../trex2-agent/ -DEUROPA_HINTS=/root/europa/dist/europa
make
make install
cd
echo 'source /usr/local/share/trex/trex_init.bash' >> /root/.bashrc