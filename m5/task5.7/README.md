## Task 5.7
1) OpenSSH commands in powershell:
	* ssh 
		* ![](https://i.imgur.com/P7u9SJY.png)
	* scp
		* ![](https://i.imgur.com/5hexkqr.png)
	* sftp
		* ![](https://i.imgur.com/DIJcOUn.png)
	* sftp-sercer 
		* ![](https://i.imgur.com/03rzB1f.png)
	* ssh-keygen
		* ![](https://i.imgur.com/jxWOI99.png)
2) Make ssh connection more security 
	* Generate ssh keys and copy it to the server:
		* ![](https://i.imgur.com/ByELKVK.png)
	* Change ssh port on the server (in file */etc/ssh/sshd_config*) and disable password authentification:
		* ![](https://i.imgur.com/QzR22UI.png)
	* Connection from local machine (where there is ssh key) is enabled:
		* ![](https://i.imgur.com/T6Y4pqN.png)
	* Connection from another machine is disable:
		* ![](https://i.imgur.com/JkHUDiz.png)
3) Create a key with encryption type ed25519 and key length 4096 with a comment to be added to the end of the public key, and copy the public key to the server:
	* ![](https://i.imgur.com/cNakPEd.png)
	* Check connection:
		* ![](https://i.imgur.com/I6elNhn.png)
4) Implement port forwarding for the SSH client from the host machine to the guest Linux virtual machine behind NAT:
	* ![](https://i.imgur.com/355lCUW.png)
	* ![](https://i.imgur.com/Jm6KjKv.png)
	* ![](https://i.imgur.com/yVYnY1p.png)
5) Intercept traffic (tcpdump) while authorizing the remote client on the server using ssh, telnet:
	* ssh:
		```
		sudo tcpdump -nnS port 22 -w ssh.cap
		```
		* ![](https://i.imgur.com/K6d9ioU.png)
		* ![](https://i.imgur.com/g7aLn1f.png)
		```
		sudo tcpdump -r ssh.cap
		```
		* ![](https://i.imgur.com/gNNRJLL.png)
	* telnet:
		* ![](https://i.imgur.com/c4Nm8uV.png)
		* ![](https://i.imgur.com/sQld2AO.png)
