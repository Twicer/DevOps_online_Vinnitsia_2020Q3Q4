## Task 5.3

```
find / -perm /6000 -type f -exec ls -ld {} \; > setuid.txt
```
![](https://i.imgur.com/IXpZSeZ.png)
Finding only files ```-type f``` from root ```find /```  with active sticky bits (SUID, SGID) ```-perm /6000``` than display list of these files ```-exec ls -ld {}\;``` and redirects the command output to the file setuid.txt ```> setuid.txt```.

Create a hard link:
![](https://i.imgur.com/uZCK71l.png)
Soft link:
![](https://i.imgur.com/ZrWXmPg.png)
