## Module 4 Networking Fundamental
### Task4.1

1) Firstly I assembled a first topology **file - task4.1(1hab_4pc).pkt** which includes 4 PCs and 1 hub.
	* ![](https://prnt.sc/toqoz3.png)

Then i assigned unique IP address from subnet 192.168.0.0/24 to each PC. There is a assigned IP addresses list below:  
| Name  |  IP address  |
|-------|--------------|
| PC0   | 192.168.0.1  |
| PC1   | 192.168.0.2  |
| PC2   | 192.168.0.3  |
| PC3   | 192.168.0.4  |

Assigned IP addresses to our PCs. Check connection:
![](https://i.imgur.com/bk5Vq1E.png)
![](https://i.imgur.com/8dhKDCC.png) 
* Packages go to hub:
![](https://i.imgur.com/DfqkaCi.png)
![](https://i.imgur.com/NtEZDec.png)
* From hub to each devices that connected to hub:
![](https://i.imgur.com/wPfEMEg.png)
![](https://i.imgur.com/VT5fcAT.png)
* From destination device to hub:
![](https://i.imgur.com/0SUbJVl.png)
![](https://i.imgur.com/DAaIezJ.png)
From hub to each devices again:
* ![](https://i.imgur.com/3RAnGCo.png)
![](https://i.imgur.com/puCw2ue.png)
![](https://i.imgur.com/qnZBsX9.png)
![](https://i.imgur.com/Y180EWc.png)

* Deleted our PC's IP addresses. Check connetion (Packages aren't going through netwotrk):
![](https://i.imgur.com/pjpokoT.png )

2) New topology **file - task4.1(2hub_6pc_1server).pkt** which includes 6 PCs, 1 Server and 2 Hubs:
	* ![](https://i.imgur.com/yB391cW.png )
* Assigned IP addresseses for PCs and Server, and checked connection:
![](https://i.imgur.com/LL9jcTv.png)
![](https://i.imgur.com/EPq3CWL.png)
![](https://i.imgur.com/JlVeOoh.png)
![](https://i.imgur.com/1ZyLz3w.png)
![](https://i.imgur.com/DhGSBD4.png)
![](https://i.imgur.com/4xt5VUi.png)
![](https://i.imgur.com/R5wPZZp.png)


3) New topology **file - task4.1(switch_4PC).pkt** which includes 1 Switch and 4 PCs:
![](https://i.imgur.com/xXpCZvY.png)
* Assigned IP addresses to PCs and checked connection:
![](https://i.imgur.com/tBFHIIS.png)
![](https://i.imgur.com/CbdyT50.png)
![](https://i.imgur.com/MIslisL.png)
![](https://i.imgur.com/ptOuXym.png)
![](https://i.imgur.com/wHSfvbK.png)

* The difference between first and third topology is that devices in the first topology are connected to hub, hub is working on the firstlevel (Physical) to OSI model and send peckages to each devices that connected to it. Devices for which these packages aren't intended rejects it, destination device accepts it.
  In the third topology devices are connecteed to switch (it works on the second level (Data link) of the OSI model). Packages that are sent through switch goes to destination device at once.


4) New topology **file - task4.1(2switch_8PC).pkt** which includes 2 Switches and 8 PCs.
![](https://i.imgur.com/njg527l.png)
* I assigned IP addresses to PCs and checked connection:
![](https://i.imgur.com/zeX8mA7.png)
![](https://i.imgur.com/mybatqb.png)
![](https://i.imgur.com/L0vFQga.png)
![](https://i.imgur.com/UeIXfLZ.png)
![](https://i.imgur.com/SYdrvOI.png)
![](https://i.imgur.com/wG4knnv.png)
* Packages from PC without IP address aren't sent:
![](https://i.imgur.com/YS5H8UW.png)



5) New topology **file - task4.1(1router_2switch_8PC).pkt** which includes 1 Router, 2 Switches, 8 PCs.
![](https://i.imgur.com/TTsvkiu.png)
* I opened Router's ports and assigned IP addresses to it according two networks which connected to it
![](https://i.imgur.com/dL82T5J.png)
![](https://i.imgur.com/dL82T5J.png)
* I assigned Default Gateway for each PC.
![](https://i.imgur.com/FlwvGLC.png)

* Connection:
![](https://i.imgur.com/LMYjMJ2.png)
![](https://i.imgur.com/8FcyhrD.png)
![](https://i.imgur.com/XHAm1nP.png)
![](https://i.imgur.com/VzXraZ6.png)
![](https://i.imgur.com/uuK3Lbl.png)
![](https://i.imgur.com/Jk33WFn.png)
![](https://i.imgur.com/HSCjfs8.png)
![](https://i.imgur.com/oijxMZB.png)
* Packages from PC without IP address aren't sent:
![](https://i.imgur.com/YYbnYlL.png)

* The difference between fourth (2 Switches, 8 PCs) and fifth (1 Router, 2 Switches, 8 PCs) topology is that in fourth packages are sent within one subnet: 192.168.0.0./24 using Switch (it works on the second level (Data link) of the OSI model).
In the fifth topology there are two subnet 192.168.0.0./24 92.168.1.0./24 which connected to each other using router (it works on the third level (Transport) of OSI model). Router provides an opportunity to connect different subnet to ech other and send packages through those subnets 
