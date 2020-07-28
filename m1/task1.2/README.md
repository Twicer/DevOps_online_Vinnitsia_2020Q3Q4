# DevOps_online_Vinnitsia_2020
* Created local git repo
* Created GitHub public repo
* Clone GitHub repo to local workstation
* Created work directories
* Created branch **develop**
	```
	git checkout -b develop
	```

	* Added empty file *index.html*
	* Created branch **images**
		```
		git checkout -b images
		```

		* Added dir *images*
		* Added first and images
			![alt text](https://i.imgur.com/Y4MTOzh.png) ![alt text](https://i.imgur.com/aWYE6Ng.png)
		* Added image tag to *index.html*
			```
			git add .
			git commit -m 'your comment'
			git checkout develop
			```
	* Created branch **styles**
		```
		git checkout -b styles
		```
		* Added dir *styles*
		* Added css file with code:
			```
			body {
 				background-color: powderblue;
			}		
			h1 {
  				color: blue;
			}
			p {
  				color: red;
			}
			```
		* Modified *index.html*
			```
			git add .
			git commit -m 'your comment'
			git checkout develop
			```
	* Merge **images** to **develop**
		```
		git merge images
		```
	* Merge **styles** to **develop**
		```
		git merge styles
		```
* Merge **develop** to **master**
 	```
	git checkout master
	git merge develop
	```
