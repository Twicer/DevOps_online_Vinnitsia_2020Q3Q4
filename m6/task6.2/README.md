## Task 6.2
# Configuration DHCP and DNS server.
1) VM1 **Ubuntu_no_GUI** has two network adapters *NAT* and *Internal Network*:
	* ![](https://i.imgur.com/XCh8Lcn.png)
	* ![](https://i.imgur.com/ikCkxIN.png)
2) VM1 has the following network interfaces ``/etc/network/interfaces``:
	* ![](https://i.imgur.com/Fh2GgxX.png)
	* ![](https://i.imgur.com/O4UfnHL.png)
3) VM2 **Ubuntu_no_GUI_VM2** has only *Internal Network* adapter:
	* ![](https://i.imgur.com/nL8lji7.png)
4) VM2 has the following network interfaces ``/etc/network/interfaces``:
	* ![](https://i.imgur.com/3df4U6D.png)
	* ![](https://i.imgur.com/CWX7cML.png)
5) VM3 **Ubuntu_no_GUI_VM2_Clone** has only *Internal Network* adapter:
	* ![](https://i.imgur.com/swwVxOZ.png)
6) VM3 has the following network interfaces ``/etc/network/interfaces``:
	* ![](https://i.imgur.com/xWaRjKo.png)
	* ![](https://i.imgur.com/zk75JVC.png)
7) Install *dnsmasq* on the VM1:
	```
	apt install dnsmasq
	```
	* ![](https://i.imgur.com/1NSuvcd.png)
