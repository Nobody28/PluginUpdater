 #!/bin/sh
echo '############################'
echo '# www.gigablue-support.com #'
echo '#       www.openA.TV       #'
echo '#         @Nobody28        #'
echo '############################'
echo $LINE 
echo 'Updating installed Plugins'
echo 'Please Wait'
echo $LINE
cd /tmp
opkg update > /dev/null
opkg list-upgradable | grep plugin-extensions > /tmp/liste.log
sed 's/enigma2-plugin-extensions/opkg install enigma2-plugin-extensions/g' /tmp/liste.log > /tmp/plugin.log
chmod 755 /tmp/plugin.log
./plugin.log > /dev/null
echo $LINE 
if grep -qs 'enigma2-plugin-extensions' cat plugin.log ; then
	echo 'Updated Plugins:'
else	
    echo "No Updates found!"
fi
cat liste.log
echo $LINE
rm /tmp/plugin.log
rm /tmp/liste.log
echo 'Plugin Update Complete'
echo $LINE
echo 'Check the LOG with UP Button!'
echo $LINE
echo 'Thank you for using Plugin-Updater Plugin  by @Nobody28'
echo $LINE
#created by Nobody28
# www.gigablue-support.com (openMips)
# www.opena.tv
exit 0