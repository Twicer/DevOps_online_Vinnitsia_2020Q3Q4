# Task 5.4

1) Creat new group, new user (with shell access /bin/bash and home dir /home/user), add user to group, change password for user, show its uid and gid and login to user:
	* ![](https://i.imgur.com/9Vwavvx.png)
2) Edit /etc/passwd to prevent user **user** from logging in to the system (as shell command set /usr/sbin/nologin):
	* ![](https://i.imgur.com/CFHMAng.png)
	* ![](https://i.imgur.com/2Csmt68.png)
3) Content of */etc/passwd* and */etc/group*
	* ![](https://i.imgur.com/fV7Imhc.png)
	* ![](https://i.imgur.com/fV3AvCo.png)
Get data from */etc/passwd* and */etc/group* about users: *root*, *user* using  filter grep:
	* ![](https://i.imgur.com/H8srSWk.png)
	* ![](https://i.imgur.com/DWbueeH.png)
	* ![](https://i.imgur.com/wRDjE3i.png)
	* ![](https://i.imgur.com/Xn9l1lq.png)
Parse */etc/passwd* and */etc/group* with ```cut```:
	* Print first column:
		* ![](https://i.imgur.com/P1EEVzV.png)
		* ![](https://i.imgur.com/WXlL3HP.png)
	* Print first and second columns simultaneously:
		* ![](https://i.imgur.com/mM6kIxN.png)
		* ![](https://i.imgur.com/TiR4qJF.png)
	* First and seventh columns:
		* ![](https://i.imgur.com/YCCkS2S.png)
Content of file /etc/shadow whois includes encrypted accounts passwords:
	* ![](https://i.imgur.com/Z03D134.png)
Write a simple script which prints string: "Drugs are bad MKAY?" set the executable rules for it and execute:
	* ![](https://i.imgur.com/zPDVuif.png)
Create directory “testDir” in the /tmp; put file test.txt into testDir and prohibit user *user* from visiting this directory:
	* ![](https://i.imgur.com/aTtTOXW.png)
Forbid an owner of some file to read to or write from this file:
	* ![](https://i.imgur.com/JHOTL9B.png) 

