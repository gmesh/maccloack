# maccloack
Cloack MAC address

To set it on init.d:

	sudo chmod -x main.sh
	sudo cp main.sh /etc/init.d/
	sudo update-rc.d main.sh start 20 2 3 4 5. stop 20 0 1 6.


To drop it from there:

	sudo update-rc.d -f main.sh remove

See more (info)[http://manpages.ubuntu.com/manpages/hardy/man8/update-rc.d.8.html]
