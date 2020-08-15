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
6. Enable quotas for file system:
	* ![](https://i.imgur.com/Pnhpbux.png)
7. Report about quotas:
	* ![](https://i.imgur.com/b58k7hW.png)
8. Copy *lib* folder to *utest* home folder:
	* ![](https://i.imgur.com/I0kq0pV.png)
9. The size of *lib* folder is more than set disk quota for uset *utest*, so we are facing the error:
	* ![](https://i.imgur.com/hOw5h2X.png)
