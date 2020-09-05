## Task 6.2
# Configuring DHCP and DNS server.
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
8) Set interface and dhcp-range in the ``/etc/dnsmasq.conf``:
	* ![](https://i.imgur.com/EGL7zt4.png)
9) Configure iptables masquerade on the VM1 for port forwarding:
	* ![](https://i.imgur.com/D1yQnUO.png)
10) Check DNS access on the VM2 and VM3:
	* ![](https://i.imgur.com/C9XMUkp.png)
	* ![](https://i.imgur.com/VTa5Yon.png)
11) Host machine's ip:
	* ![](https://i.imgur.com/jYTVPDd.png)
12) Check connection from VM2 and VM3 to host machine:
	* ![](https://i.imgur.com/8exAtei.png)
	* ![](https://i.imgur.com/APzKgdu.png)

# Configuring routing using OSPF protocol
## VM1 **Ubuntu_no_GUI** 
1) VM1 **Ubuntu_no_GUI** has four network adapters *NAT* and three *Internal Network*:
	* ![](https://i.imgur.com/VdXjMe7.png)
	* ![](https://i.imgur.com/c247JnG.png)
	* ![](https://i.imgur.com/TZ7OVjj.png)
	* ![](https://i.imgur.com/kxCuLZ3.png)
2) Install *quagga* on VM1:
	```
	apt install quagga
	```
	* ![](https://i.imgur.com/wQyRSbk.png)
3) VM1 has the following network interfaces ``/etc/network/interfaces``:
	* ![](https://i.imgur.com/V5z8d5o.png)
	* ![](https://i.imgur.com/GP5qRgj.png)
4) Enable deamons *zebra* and *ospf* in the ``/etc/quagga/daemons``:
	* ![](https://i.imgur.com/SZGEamD.png)
5) Configure zebra and ospf using vtysh console:
	* ![](https://i.imgur.com/XllQL7X.png)
6) Show ospf routes:
	* ![](https://i.imgur.com/vV6D2DU.png)
7) Show VM1 routing table:
	* ![](https://i.imgur.com/q658KO0.png)
8) Zebra ``/etc/quagga/zebra.conf``  and OSPF ``/etc/quagga/ospfd.conf`` configuration files were filled in by the following way:
	* ![](https://i.imgur.com/4W1wh9O.png)
	* ![](https://i.imgur.com/zFlerfL.png) 
9) Configure iptables masquerade on the VM1 for port forwarding:
	* ![](https://i.imgur.com/fcvvUcO.png)
## VM3 **Ubuntu_no_GUI_VM2_Clone** 
1) VM3 **Ubuntu_no_GUI** has four network adapters *Bridge* and three *Internal Network*:
	* ![](https://i.imgur.com/9MdCfI0.png)
	* ![](https://i.imgur.com/7cDXodR.png)
	* ![](https://i.imgur.com/O3J2tVd.png)
	* ![](https://i.imgur.com/O3J2tVd.png)
2) VM3 has the following network interfaces ``/etc/network/interfaces``:
	* ![](https://i.imgur.com/PGmNV78.png)
	* ![](https://i.imgur.com/AGp26Jj.png)
3) Install quagga and configure zebra and ospf like for VM1.
	* ![](https://i.imgur.com/W7VhPRX.png)
	* ![](https://i.imgur.com/LEmaryA.png)
4) Zebra ``/etc/quagga/zebra.conf``  and OSPF ``/etc/quagga/ospfd.conf`` configuration files were filled in by the following way:
	* ![](https://i.imgur.com/KumJcAu.png)
	* ![](https://i.imgur.com/nzrqtEr.png)
5) Show ospf routes:
	* ![](https://i.imgur.com/mGy7M70.png)
6) Show VM1 routing table:
	* ![](https://i.imgur.com/f8nCCmc.png)
7) Configure iptables masquerade on the VM1 for port forwarding:
	* ![](https://i.imgur.com/ECvzy9H.png)
## VM2 **Ubuntu_no_GUI_VM2**
1) VM2 **Ubuntu_no_GUI** has four network adapters *NAT* and three *Internal Network*:
	* ![](https://i.imgur.com/tPuBOBv.png)
	* ![](https://i.imgur.com/0zwV7I4.png)
	* ![](https://i.imgur.com/f5DCTFc.png)
	* ![](https://i.imgur.com/oopYo3O.png)
2) VM2 has the following network interfaces ``/etc/network/interfaces``:
	* ![](https://i.imgur.com/TyxHxuZ.png)
	* ![](https://i.imgur.com/s2ahLJJ.png)
3) Install quagga and configure zebra and ospf like for VM1.
	* ![](https://i.imgur.com/JOHkc4Z.png)
4) Zebra ``/etc/quagga/zebra.conf``  and OSPF ``/etc/quagga/ospfd.conf`` configuration files were filled in by the following way:
	* ![](https://i.imgur.com/QR2PAo3.png)
	* ![](https://i.imgur.com/qMTmenU.png)
5) Show ospf routes:
	* ![](https://i.imgur.com/UlYMINX.png)
6) Show VM2 routing table and traceroute to 8.8.8.8:
	* ![](https://i.imgur.com/MYV0x6L.png)
7) Delete default gateway and set VM1 gateway then check traceroute to 8.8.8.8:
	* ![](https://i.imgur.com/2TF19ef.png)
8) Delete default gateway and set VM3 gataway, then check traceroute to 8.8.8.8:
	* ![](https://i.imgur.com/mm5YEbn.png)
