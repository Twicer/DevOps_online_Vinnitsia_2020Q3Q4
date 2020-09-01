## Task 6.1

1) VM2 **Ubuntu_no_GUI_VM2**  with network adapter *Internal network*:
	* ![](https://i.imgur.com/cW3mpBZ.png)
2) VM1 **Ubuntu_no_GUI** with two network adapters: first - NAT, second - Internal Network:
	* ![](https://i.imgur.com/3G6wwI3.png)
	* ![](https://i.imgur.com/2r3c9yM.png)
	* Port forwarding for SSH to host machine:
		* ![](https://i.imgur.com/LUVKJ20.png)
	* Check SSH connection from host machine to VM1:
		* ![](https://i.imgur.com/4cCA78l.png)
3) Network interfaces for VM1 ``/etc/network/interfaces``:
	* ![](https://i.imgur.com/LjSqXfI.png)
4) Network interfaceы for VM2:
	* ![](https://i.imgur.com/EYz2k2V.png)
5) For port forwarding is necessary on the VM1 in file ``/etc/sysctl.conf`` uncomment string ``net.ipv4.ip_forward=1``:
	* ![](https://i.imgur.com/764hH0d.png)
6) Set iptables masquerade on VM1:
	* ![](https://i.imgur.com/1C1mXbC.png)
7) Route to host machine from VM2:
	* ![](https://i.imgur.com/Q05es2o.png)
8) Ping to 8.8.8.8:
	* ![](https://i.imgur.com/8xcCRSn.png)
9) 8.8.8.8 is the dns.google, check using dig or nslookup:
	* ![](https://i.imgur.com/seJSArj.png)
10) epam.com is working from 3.214.134.159:
	* ![](https://i.imgur.com/9H7hSrB.png)
11) Routing table for Host:
	* ![](https://i.imgur.com/n1sr10u.png)
	* Default gateway for Host:
		* ![](https://i.imgur.com/P382Lfi.png)
12) Trace route on VM2 to google 8.8.8.8:
	* ![](https://i.imgur.com/DqYAytY.png)
