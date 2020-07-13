## Virtualization and Cloud Basic

1. **VirtualBox**
	* Created [first VM](https://prnt.sc/tfxjd9); 
	* Clened an existing VM to the [new one](https://prnt.sc/tfxrk4);
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
