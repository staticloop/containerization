echo "starting httpd"
httpd
echo "sleeping for 20"
sleep 20 
echo "removing datetime.html" 
rm /usr/local/apache2/htdocs/datetime.html
httpd -k stop
httpd -DFOREGROUND