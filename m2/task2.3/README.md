## Virtualization and Cloud Basic

1. Created VM in the AWS with nginx:
	* ![](https://i.imgur.com/1WnEISL.png)
	* ![](https://i.imgur.com/Mx6jS7U.png)
2. Created [S3 Bucket](https://prnt.sc/tk2dl2) and uploaded [file](https://prnt.sc/tk2hh6) to it;
	* ![](https://i.imgur.com/WEkMVQ4.png)
	* ![](https://i.imgur.com/osOjAJS.png)
3. Created ows site:
	* Created a WordPress instance in Lightsail:
		* ![](https://i.imgur.com/B8jT8pR.png)
	* Access to the WP dashboard: 
		* ![](https://i.imgur.com/SYSZTSq.png)
	* Created and attached static IP to our instance:
		* ![](https://i.imgur.com/D9Hr5m2.png)
	* Created a lightsail DNS zone: 
		* ![](https://i.imgur.com/5KmsWRS.png)
4. Created new WP instance  and map own domain to this IP:
	* ![](https://i.imgur.com/w3z7tZ7.png)
	* ![](https://i.imgur.com/iWNXUJ1.png)
	* ![](https://i.imgur.com/gVXr2pR.png)
5. Work with AWS CLI:
	* Check virsion:
		```
		aws --version
		```
		* ![](https://i.imgur.com/vR9gVeK.png)
	* Created new S3 Bucket:
		```
		aws s3 mb s3://d.koval.cli.storage
		```
		* ![](https://i.imgur.com/ycMcbKC.png)
		* ![](https://i.imgur.com/ggVENVV.png)
	* Uploaded file to new Bucket
		* ![](https://i.imgur.com/a1gX6HB.png)		
		* ![](https://i.imgur.com/rjZqAiL.png)
	* Download file from S3 Bucket:
		* ![](https://i.imgur.com/Q8H0KbQ.png)
	* Deleted file from S3 Bucket:
		* ![](https://i.imgur.com/M0UhZr5.png)
		* ![](https://i.imgur.com/rFJc9G2.png)
6. Created new S3 and placed my static web-site there: 
	* Uploaded index.html and error.html files:
		* ![](https://i.imgur.com/h9TsHZY.png)
		* ![](https://i.imgur.com/3rBB4PI.png)
		* Defauld page
			* ![](https://i.imgur.com/3Lye4sa.png)
		* Error page 
			* ![](https://i.imgur.com/3VGXgB5.png)

**Site's link** - http://d.koval.web.s3-website.eu-west-3.amazonaws.com
	
 
