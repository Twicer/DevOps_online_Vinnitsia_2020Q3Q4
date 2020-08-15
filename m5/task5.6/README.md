## Task 5.6

There are two users: guest (included into the list of sudoers) and utest.
1. Check if our file system is mounted with the 'acl' flag:
	* ![](https://i.imgur.com/UEGa3Nn.jpg)
2. Log in as *guest*. Create in */tmp* a directory called *acl_test*. By means of chmod, allow user *utest* to perform all possible operations (rwx) with respect to *acl_test*:
	* ![](https://i.imgur.com/BwoBZJL.png)
3. Verify that user *utest* is indeed capable of implementing granted him privileges:
	* ![](https://i.imgur.com/eDT7Pkh.png)
4. Check ACL permissions:
	```
	getfacl /tmp/acl_test
	getfacl /tmp/acl_test/utest.txt
	```
	* ![](https://i.imgur.com/IjeZmad.png)
 5. Employ ACL to block any activity except for reading, for user *utest* with respect to directory */tmp/acl_test*:
	* ![](https://i.imgur.com/1qxGffe.png)
