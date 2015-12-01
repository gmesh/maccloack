# maccloack
Cloack MAC address: hide the MAC address setting a random one.

Change exec permission:

	chmod +x *.sh

And execute the main...

	./main.sh

To set it on init.d:

	sudo cp main.sh /etc/init.d/
	sudo update-rc.d main.sh start 20 2 3 4 5. stop 20 0 1 6.

To drop it from there:

	sudo update-rc.d -f main.sh remove

More info: http://manpages.ubuntu.com/manpages/hardy/man8/update-rc.d.8.html
