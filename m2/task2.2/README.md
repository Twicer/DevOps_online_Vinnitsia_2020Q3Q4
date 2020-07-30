## Virtualization and Cloud Basic

1. **VirtualBox**
	* Created first VM;
		* ![](https://i.imgur.com/dylPNh6.png) 
	* Cloned an existing VM to the new one;
		* ![](https://i.imgur.com/savIFKM.png)
	* Created new group "*staged_servers*" of our VMs;
		* ![](https://i.imgur.com/AkVsyoI.png)
	* Took different shapshots of firstVM;
		* ![](https://i.imgur.com/aBdnMMs.png)
	* Exported first VM to "*.ova" file, and imported new VM from "*.ova" file;
		* ![](https://i.imgur.com/MM9qXf9.png)
		* ![](https://i.imgur.com/qTkDYUu.png)
	* Configured USB filter for VM;
		* ![](https://i.imgur.com/kVSdEXb.png)
	* Configured a shared folder
		* ![](https://i.imgur.com/t1mDnjU.png)
		* ![](https://i.imgur.com/q1YDDV7.png)
		* ![](https://i.imgur.com/Pj5JoPw.png)
	* Configured new *Host-onel network adapter* for VM:
		* ![](https://i.imgur.com/NXelJty.png)
		* VM IP address 
			* ![](https://i.imgur.com/NLR1mJO.png)
		* Ping from local machine
			* ![](https://i.imgur.com/hBAERxG.png)
		* Network IP address
			* ![](https://i.imgur.com/L1JJtDx.png)
		* Ping from VM
			* ![](https://i.imgur.com/JbweA7Z.png)
		* Posible connection table:		 
			 * | Mode       | VM-Host | Host-VM | VM1-VM2 | VM-NET/LAN | NET/LAN-VM |
			   |------------|---------|---------|---------|------------|------------|
			   | Host-only  | +       | +       | +       | -          | -          |
  			   | Internal   | -       | -       | +       | -          | -          |
			   | Bridged    | +       | +       | +       | +          | +          |
			   | NAT        | +       | Port    | -       | +          | Port       |
			   | NATservice | +       | Port    | +       | +          | Port       |
	* Executed CLI though VBoxManage:
		* VMs List
			```
			VBoxManage.exe list vms
			```
			* ![](https://i.imgur.com/vblV6AL.png);
		* VMs information
			```
			VBoxManage.exe showvminfo "Ubuntu_Koval"
			```
			* ![](https://i.imgur.com/Qb3qmga.png);
		* Create VM
			```
			VBoxManage.exe createvm --name 'TestVM' --basefolder 'E:\Ubuntu_Koval_VM'
			```
			* ![](https://prnt.sc/tgkbmy);
		* Start VM
			```
			VBoxManage.exe startvm "Ubuntu_Koval" --type gui
			```
			* ![](https://i.imgur.com/SIXP0A7.png)
		* Modify VM:
			* ![](https://i.imgur.com/JsGxZoX.png)
			* ![](https://i.imgur.com/4h1fLzi.png)
			* ![](https://i.imgur.com/ebJLaF4.png)
		* Clone VM:
			* ![](https://i.imgur.com/hzHhmNA.png)
		* Take snapshot:
			* ![](https://i.imgur.com/tfzaHqh.png)
			* ![](https://i.imgur.com/v9c4yHx.png)
		* Control VM:
			* ![](https://i.imgur.com/SOFxi9E.png)

2. **Vagrant**
	* Made home dir for our project:
		* ![](https://i.imgur.com/vK4MmfB.png)
	* Initialized the environment with the default Vagrant box
		* ![](https://i.imgur.com/V0DwyZD.png)
	* Create, configure and run VM:
		* ![](https://i.imgur.com/BnurMwi.png)
	* Connect to VM via SSH:
		* ![](https://i.imgur.com/9QYc8sg.png)
		* ![](https://i.imgur.com/N7ybk2x.png) 
		* ![](https://i.imgur.com/wDdVWQN.png)
	* Check some command:
		* ![](https://i.imgur.com/0A5q78f.png)	
	* Stopped and deleted VM:
		* ![](https://i.imgur.com/Z6KEShk.png)
	* Created our box with the simple services for site work:
		* Connected via ssh to VM
			* ![](https://i.imgur.com/7vj9KMn.png)
		* Updated and uploaded VM's repo lists:
			```
			sudo apt-get update
			sudo apt-get upgrade
			```
		* Installed web-server apache
			```
			sudo apt-get install apache2
			```
			* ![](https://i.imgur.com/vu8xxab.png)
		* Installed RDBMS - MySQL and its extentions, and cofigured
			```
			sudo apt-get install mysql-server libapache2-mod-auth-mysql php5-mysql
			sudo mysql_install_db
			sudo /usr/bin/mysql_secure_installation
			```
			* ![](https://i.imgur.com/vPmuUBU.png)
		* Installed php and its extensions:
			```
			sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt
			sudo apt-get install php5-cgi php5-cli php5-curl php5-common php5-gd php5-mysql
			sudo service apache2 restart
			```
			* ![](https://i.imgur.com/YozecAS.png)
		* Ports for apache - 80 and mysql - 3306 are open:
			* ![](https://i.imgur.com/V4JdH8K.png)
		* Repackaged the VM into a new Vagrant Box:
			* ![](https://i.imgur.com/f6jx0zw.png)
		* Added the box into our Vagrant 
			* ![](https://i.imgur.com/X2tSxvr.png)
			* ![](https://i.imgur.com/jZKQmgp.png)
		* Stopped and deleted VM:
			* ![](https://i.imgur.com/aLWGWVj.png)
		* Deleted Vagrantfile and initialezed our new box
			* ![](https://i.imgur.com/VFjLQPF.png)
	* Created a different VM with nginx web-server, and runned VMs with nginx and apache+php+mysql simultaneously:
		* Created new VM dir, initialized new VM and runned it:
			```
			mkdir .\Denys_Vagrant_two
			cd .\Denys_Vagrant_two\
			vagrant init hashicorp/precise64
			vagrant up
			``` 
			* ![](https://i.imgur.com/FxPfXQA.png)
		* Connecte to new CM via SSH and installed nginx on it:
			```
			sudo apt-get update
			sudo apt-get install nginx
			```
		* Runned our second VM with apache+php+mysql
			```
			cd .\Denys_Vagrant\
			vagrant up
			```
		* VM with nginx is running with 2222 port
			* ![](https://i.imgur.com/a8DddGH.png) 
			* nginx is running:
				* ![](https://i.imgur.com/dR2Yi5g.png)
			* VM with apache is running with 2200 port:
				* ![](https://i.imgur.com/AyR729a.png)
			* apache is running:
				* ![](https://i.imgur.com/JuabyKw.png)
 
