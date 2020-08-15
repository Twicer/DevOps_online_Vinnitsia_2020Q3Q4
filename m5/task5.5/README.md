## Task 5.5

Create a user *utest*:
* ![](https://i.imgur.com/WUcQa7F.png)
Set the usrquota flag by editing to /etc/fstab:
* ![](https://i.imgur.com/zmv9Qmh.png)
Remount, create files aquota.user, and set permissions 600:
* ![](https://i.imgur.com/vbL9U9H.png)
Allow Linux to read the aquota.user file:
* ![](https://i.imgur.com/aOpYIco.png)
Edit quotas for user *utest* and set the limit of the available	disk space to soft: 100M and hard: 150M:
```
edquota -u utest
```
* ![](https://i.imgur.com/8VMDDVK.png)
