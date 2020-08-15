## Task 5.5

1. Create a user *utest*:
	* ![](https://i.imgur.com/WUcQa7F.png)
2. Set the usrquota flag by editing to /etc/fstab:
	* ![](https://i.imgur.com/zmv9Qmh.png)
3. Remount, create files aquota.user, and set permissions 600:
	* ![](https://i.imgur.com/vbL9U9H.png)
4. Allow Linux to read the aquota.user file:
	* ![](https://i.imgur.com/aOpYIco.png)
5. Edit quotas for user *utest* and set the limit of the available disk space to soft: 100M and hard: 150M:
	```
	edquota -u utest
	```
	* ![](https://i.imgur.com/8VMDDVK.png)
