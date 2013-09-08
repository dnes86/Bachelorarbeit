#!/bin/sh

# Adhocracy1 (Adhocracy.de Theme)
# -------------------------------
mkdir adhocracy1
cp adhocracy1.cfg adhocracy1
cp build.sh adhocracy1
cd adhocracy1

if [ file1=adhocracy1.cfg ]; then
    file1=adhocracy1.cfg
    #
    PROTOCOL1=$(awk '/\[adhocracy\]/, /^$/' "$file1" | sed -n 's/protocol = //p')
    DOMAIN1=$(awk '/\[domains\]/, /^$/' "$file1" | sed -n 's/main = //p')
    ADHOCRACY_PORT1=$(awk '/\[ports\]/, /^$/' "$file1" | sed -n 's/main = //p')
    #
    sh build.sh -c $file1
fi

#---------------------------------------------------
cd $HOME
#---------------------------------------------------

# Adhocracy2 (Adhocracy HHU Theme)
# --------------------------------
mkdir adhocracy2
cp adhocracy2.cfg adhocracy2
cp build.sh adhocracy2
cd adhocracy2

if [ file2=adhocracy2.cfg ]; then
    file2=adhocracy2.cfg
    #
    PROTOCOL2=$(awk '/\[adhocracy\]/, /^$/' "$file2" | sed -n 's/protocol = //p')
    DOMAIN2=$(awk '/\[domains\]/, /^$/' "$file2" | sed -n 's/main = //p')
    ADHOCRACY_PORT2=$(awk '/\[ports\]/, /^$/' "$file2" | sed -n 's/main = //p')
    #
    sh build.sh -c $file2
fi

#---------------------------------------------------
clear
#---------------------------------------------------

echo ""
echo "---------------------------------------------------"
echo "The interactive Paster daemon starts automatically!"
echo "---------------------------------------------------"
echo ""
echo "adhocracy1 (Adhocracy.de Theme)"
echo "Navigate to  ${PROTOCOL1}://${DOMAIN1}:${ADHOCRACY_PORT1}/  to see adhocracy and use the email \"admin@${DOMAIN1}\" and password \"password\" to login."
#echo "Type  adhocracy1/adhocracy_buildout/bin/adhocracy_interactive.sh  to run manually the interactive paster daemon."
echo ""
echo "adhocracy2 (Adhocracy HHU Theme)"
echo "Navigate to  ${PROTOCOL2}://${DOMAIN2}:${ADHOCRACY_PORT2}/  to see adhocracy and use the email \"admin@${DOMAIN2}\" and password \"password\" to login."
#echo "Type  adhocracy2/adhocracy_buildout/bin/adhocracy_interactive.sh  to run manually the interactive paster daemon."
echo ""