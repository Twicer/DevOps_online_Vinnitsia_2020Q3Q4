# Task 3.1
1) Install MySQL:
	```
	sudo apt-get update
	sudo apt-get install mysql-server
	mysql_secure_installation
	```
	* ![](https://i.imgur.com/IyiiT2Z.png)
2) Check status:
	* ![](https://i.imgur.com/d9ss9oG.png)
3) Create database **EPAM_DevOps_Course** with tables: *student*, *mentor*, *module*, *visit*:
	* ![](https://i.imgur.com/gBk8JiT.png)
	* ![](https://i.imgur.com/09FdKNy.png)
4) Create file *students.txt* and fill in the student's data to this file, then load data from the file to the table *student*:
	* ![](https://i.imgur.com/iorXQIk.png)
	* ![](https://i.imgur.com/s9q9w0m.png)
5) Create file *mentors.txt* and fill in the mentor's data to this file, then load data from the file to the table *mentor*:
	* ![](https://i.imgur.com/fCddWxW.png)
	* ![](https://i.imgur.com/1oyBxKE.png)
6) Create file *modules.txt* and fill in the module's data to this file, then load data from the file to the table *module*: 
	* ![](https://i.imgur.com/2m9l1Fw.png)
	* ![](https://i.imgur.com/YZHehM8.png)
7) Create file *visit.txt* and fill in the visit's data to this file, then load data from file to table *visit*:
	* ![](https://i.imgur.com/FAILdV1.png)
	* ![](https://i.imgur.com/hUBavB4.png)
8) Execute SQL queries DDL, DML, DCL:
	* DDL - Data Definition Language:
		* ![](https://i.imgur.com/tZsZTR3.png)
		* ![](https://i.imgur.com/Ilcgrxe.png)
		* ![](https://i.imgur.com/KVGIgnO.png)
		* ![](https://i.imgur.com/y8Vh9k9.png)
		* ![](https://i.imgur.com/pdQMPnp.png)
		* ![](https://i.imgur.com/en3pLdT.png)
		* ![](https://i.imgur.com/YLhKN94.png)
	* DML - Data Manipulation Language:
		* ![](https://i.imgur.com/4K8alGb.png)
		* ![](https://i.imgur.com/rWGihAQ.png)
		* ![](https://i.imgur.com/bwJAbvZ.png)
		* ![](https://i.imgur.com/3W1IMVk.png)
	* DCL - Data Control Language:
		* Create user **admin** with all privileges in the database **EPAM_DevOps_Course**:
		* ![](https://i.imgur.com/NDoBlJX.png)
		* ![](https://i.imgur.com/CEO1CfJ.png)
		* Create user **change** with only SELECT privileges in the database **EPAM_DevOps_Course**:
		* ![](https://i.imgur.com/wvsoPEs.png)
		* ![](https://i.imgur.com/2yeA2CI.png)
		* Delete *SELECT* privilege for user **admin**:
		* ![](https://i.imgur.com/3CZTvYs.png)
		* ![](https://i.imgur.com/7Qc1PNG.png)
		* Delete the only privilege *SELECT* from user **change**, so there are no privileges for this user, so we can't get access to the database:
		* ![](https://i.imgur.com/K86Asva.png)
		* ![](https://i.imgur.com/IRVAqoS.png)
9) Selection from database:
	* ![](https://i.imgur.com/HqvHi4o.png)
	* ![](https://i.imgur.com/jMbUNXf.png)
	* ![](https://i.imgur.com/rTOvQV5.png)
	* ![](https://i.imgur.com/IGzlPAV.png)
	* ![](https://i.imgur.com/spEVD7E.png) 
