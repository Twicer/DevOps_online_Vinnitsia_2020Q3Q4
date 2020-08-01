## Task 4.2

1) I built a network for two 2-storey building and connected them together using two routers **FILE - first_topology.pkt**. There are two network within each building first is on the first floor and second is on the second floor. Each subnet includes 5 PCs. PCs are connected using switch, switches are connected using router.
	* Network:
		* ![](https://i.imgur.com/oxyQekV.png)
	* Check connection inside one subnet *192.168.0.0/24*. Send ICMP package from *PC0 - 192.168.0.1* to *PC3 - 192.168.0.4* and from *PC1 - 192.168.0.2* to *PC4 - 192.168.0.5*
		* ![](https://i.imgur.com/A5VbawM.png)
		* ![](https://i.imgur.com/DQI2rTK.png)
	* Check connection between 2 networks *192.168.0.0/24* and *192.168.1.0/24* within one building. Send ICMP package from *PC2 - 192.168.0.3* to *PC6 - 192.168.1.2* and ping from *PC9 - 192.168.1.4* to *PC0 - 192.168.0.1*:
		* ![](https://i.imgur.com/fruaeKC.png)
		* ![](https://i.imgur.com/tVQ9Vgt.png)
	* Check connection between 2 networks (*192.168.0.0/24* and *168.125.0.0/24*) and 2 building. Send ICPM package from *PC3 - 192.168.0.4* to *PC17 - 168.125.0.2*:
		* ![](https://i.imgur.com/WxrLInA.png)
        * Check connection between 2 networks (*192.168.1.0/24* and *168.125.0.0/24*) and 2 building. Ping from *PC9 - 192.168.1.5* to *PC19 - 168.125.0.4*:
		* ![](https://i.imgur.com/c66Pyc8.png)
        * Check connection between 2 networks (*138.125.1.0/24* and *192.168.1.0/24*) and 2 building. Send ICPM package from *PC14 - 138.125.1.4* to *PC8 - 192.168.1.4*:
		* ![](https://i.imgur.com/hMJcX81.png)
        * Check connection between 2 networks (*138.125.1.0/24* and *192.168.1.0/24*) and 2 building. Ping from *PC16 - 168.125.0.1* to *PC8 - 192.168.1.3*:
		* ![](https://i.imgur.com/vCmlPVQ.png)                      


2) I built a network for a 4-storey building, there are two work groups on each floor, first group includes 5 PCs second group includes 3 PCs **FILE - second_topology.pkt**. I've connected each group using switch, and connected them to one network using router. I assigned different IP subnets for each group and configured routing for each router.
	* Network:
		* ![](https://i.imgur.com/DUpyXVx.png)
	* Send ICMP package from *PC3 - 92.168.1.2* to *PC11 - 123.145.0.2*:
		* ![](https://i.imgur.com/ALyKQ3f.png)
	* Ping from *PC1 - 192.168.0.3* to *PC10 - 123.145.1.4*:
		* ![](https://i.imgur.com/cNslIAj.png)
	* Send ICMP package from *PC4 - 192.168.1.4* to *PC17 - 31.58.41.3*:
		* ![](https://i.imgur.com/HwPf2PC.png)
	* Ping from *PC0 - 192.168.0.2* to *PC16 - 31.58.41.3*:
		* ![](https://i.imgur.com/xpko8qj.png)
	* Send ICMP package from *PC5 - 192.168.1.6* to *PC27 - 69.75.11.3*:
		* ![](https://i.imgur.com/1LO9m1N.png)
	* Ping from *PC0 - 192.168.0.2* to *PC24 - 156.82.1.3*:
		* ![](https://i.imgur.com/goBFiZ2.png)  


3) I built a network for five one-floor building, there is one work group on each building which include 6 PCs. Network is built using one router with one port **FILE - third_topology.pkt**.
	* Network:
		* ![](https://i.imgur.com/4XYeyHc.png)
	* Ping from PC from first subnet (first building) to PC from second subnet (second building)
		* ![](https://i.imgur.com/P4xLVed.png)
	* ICMP from second subnet to first one:
		* ![](https://i.imgur.com/FAvjNcT.png)
	* Ping from first subnet to third one:
		* ![](https://i.imgur.com/LCysoF7.png)
	* ICMP from third subnet to first one:
		* ![](https://i.imgur.com/PNnHuR4.png)
	* Ping from second subnet to fourth one:
		* ![](https://i.imgur.com/7HR0pzT.png)
	* ICMP from fourth subnet to third one:
		* ![](https://i.imgur.com/7d2igTd.png)
	* Ping from fourth subnet to fifth one:
		* ![](https://i.imgur.com/4azuNFt.png)
	* ICMP from fifth subnet to first one:
		* ![](https://i.imgur.com/hm7oYnt.png)
