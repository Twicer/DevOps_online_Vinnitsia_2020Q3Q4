## Virtualization and Cloud Basic

1. **VirtualBox**
	* Created [first VM](https://prnt.sc/tfxjd9); 
	* Cloned an existing VM to the [new one](https://prnt.sc/tfxrk4);
	* Created new group [staged_servers](https://prnt.sc/tfxum7) of our VMs;
	* Took different [shapshots](https://prnt.sc/tfy888) of firstVM;
	* Exported first VM to [*.ova file](https://prnt.sc/tgaote), and imported [new VM from *.ova file](https://prnt.sc/tgau0a);
	* Configured [USB filter for VM](https://prnt.sc/tgb95v);
	* Configured a [shared folder](https://prnt.sc/tgbhqu)
		* https://prnt.sc/tgbjz6
		* https://prnt.sc/tgbkkr
	* Configured new *Host-onel network adapter* for VM - https://prnt.sc/tgdhgs
		* [VM IP address](https://prnt.sc/tgdiql)
		* [Ping from local machine](https://prnt.sc/tgdjml)
		* [Network IP address](https://prnt.sc/tgdld5)
		* [Ping from VM](https://prnt.sc/tgdlrw)
		* Posible connection table:		 
			 * | Mode       | VM-Host | Host-VM | VM1-VM2 | VM-NET/LAN | NET/LAN-VM |
			   |------------|---------|---------|---------|------------|------------|
			   | Host-only  | +       | +       | +       | -          | -          |
  			   | Internal   | -       | -       | +       | -          | -          |
			   | Bridged    | +       | +       | +       | +          | +          |
			   | NAT        | +       | Port    | -       | +          | Port       |
			   | NATservice | +       | Port    | +       | +          | Port       |
	* Executed CLI though VBoxManage:
		* [VMs List](https://prnt.sc/tge5ay);
		* [VMs information](https://prnt.sc/tge675);
		* [Create VM](https://prnt.sc/tgkbmy);
		* [Start VM](https://prnt.sc/tgkdw9);
		* Modify VM:
			* https://prnt.sc/tgkkop
			* https://prnt.sc/tgkour
			* https://prnt.sc/tgkozr
		* [Clone VM](https://prnt.sc/tgksxv);
		* Take snapshot (https://prnt.sc/tgkxox)  -  https://prnt.sc/tgkxvd
		* [Control VM](https://prnt.sc/tgkz9j)

2. **Vagrant**
	* [Made home dir for our project](https://prnt.sc/tgy3ti)
	* [Initialized the environment with the default Vagrant box](https://prnt.sc/tgy6hz)
	* [Create, configure and run VM](https://prnt.sc/th0vf5)
	* Connect to VM via SSH:
		* https://prnt.sc/th0w2b
		* https://prnt.sc/th0wix  -  https://prnt.sc/th0wvc
	* [Check some command](https://prnt.sc/th0xg9)
	* [Stopped and deleted VM](https://prnt.sc/th11f4)
	* Created our box with the simple services for site work:
		* [Connected via ssh to VM](https://prnt.sc/th1rwm)
		* Updated and uploaded VM's repo lists:
			```
			sudo apt-get update
			sudo apt-get upgrade
			```
		* [Installed web-server apache](https://prnt.sc/th2rya)
			```
			sudo apt-get install apache2
			```
		* [Installed RDBMS - MySQL and its extentions, and cofigured](https://prnt.sc/th2zak)
			```
			sudo apt-get install mysql-server libapache2-mod-auth-mysql php5-mysql
			sudo mysql_install_db
			sudo /usr/bin/mysql_secure_installation
			```
		* [Installed php and its extensions](https://prnt.sc/th30q8)
			```
			sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt
			sudo apt-get install php5-cgi php5-cli php5-curl php5-common php5-gd php5-mysql
			sudo service apache2 restart
			```
		* [Ports for apache - 80 and mysql - 3306 are open](https://prnt.sc/th31za)
		* [Repackaged the VM into a new Vagrant Box](https://prnt.sc/th38mz)
		* Added the box into our Vagrant (https://prnt.sc/th3ads)  -  https://prnt.sc/th3b4v
		* [Stopped and deleted VM](https://prnt.sc/th3cal)
		* [Deleted Vagrantfile and initialezed our new box](https://prnt.sc/th3dh6)
	* Created a different VM with nginx web-server, and runned VMs with nginx and apache+php+mysql simultaneously:
		* Created new VM dir, initialized new VM and runned it  -  https://prnt.sc/thnunj:
			```
			mkdir .\Denys_Vagrant_two
			cd .\Denys_Vagrant_two\
			vagrant init hashicorp/precise64
			vagrant up
			``` 
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
		* VM with nginx is running with 2222 port  -  https://prnt.sc/thntly 
			* [nginx is running](https://prnt.sc/thns78)
		* VM with apache is running with 2200 port  -  https://prnt.sc/thntzt
			* [apache is running](https://prnt.sc/thnt06)
