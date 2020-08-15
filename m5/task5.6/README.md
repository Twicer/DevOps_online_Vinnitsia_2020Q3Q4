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
6. Test if the actions are eﬀectively prohibited:
	```
	touch /tmp/acl_test/prohibited.txt	
	echo “new content” > /tmp/acl_test/utest.txt	
	```
	* ![](https://i.imgur.com/b9gyN2o.png)
	* ![](https://i.imgur.com/jKikOP4.png)
7. Consider a situation when at the ACL level user *utest* is allowed to have all possible privileges with respect to */tmp/acl_test*, while no action is allowed with chmod:
	* ![](https://i.imgur.com/1rDwtpi.png)
8. The following commands are executed as acl interrupts normal privileges:
	```
	touch	/tmp/acl_test/test.txt 
	echo “newcontent”> /tmp/acl_test/test.txt 
	```
	* ![](https://i.imgur.com/dPZetNj.png)
9. For user *utest*, set default ACLs to the directory */tmp/acl_test* which allow read-only access:
	* ![](https://i.imgur.com/CHzbBYZ.png)
10. Being logged in as *utest*, invoke ``touch`` to create the file *utest2.txt* in the */tmp/acl_test* directory:
	* ![](https://i.imgur.com/bF1DtWl.png)
 * Permissions to the created file only (r) that default acl (-d) is installed on the directory does not change the permissions of the directory itself, but makes sure that the specified acl are set by default on all files created inside it.
11. Set	the maximum permissions mask on the */tmp/acl_test/utest.txt* ﬁle in such a way as to allow read-only access.
	* ![](https://i.imgur.com/7W9JlmA.png)
12. Delete all ACL entries relative to the */tmp/acl_test* directory:
	* ![](https://i.imgur.com/BgCZr8O.png)
