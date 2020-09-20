## Task6.4

# Custom log analizer

1. If script is run without options you'll get a man page:
    * ![](https://i.imgur.com/jPCZVQs.png)
2. Options:
    * --mip - Display from which IP address there were most requests and count requests:
        * ![](https://i.imgur.com/S6zt7bk.png)
    * --rcount [IP] - Display IP addresses from which there were requests and count it. If [IP] is defined count requests from that IP.
        * ![](https://i.imgur.com/SaWVioK.png)
        * ![](https://i.imgur.com/lOF3soW.png)
    * --dip [IP] -  Display requested page, status code, and IP addresses from which there were requests. If [IP] is defined display requested page, status code only for that IP.
        * ![](https://i.imgur.com/lHD6dps.png)
        * ![](https://i.imgur.com/YEUy1KM.png)
    * --mpage - Display requests count, status code, and URL of most requested pages.
        * ![](https://i.imgur.com/NDsEgkG.png)
    * --npage - Display IP, User Agent, URL, and status code of requests to none-existent pages.
        * ![](https://i.imgur.com/Ds6Mmnm.png)
    * --hreq - Display date, time, when there were most requests to site and count requests. If parametr [--all] is defined, display all date, time where there were requests to site and count requests
        * ![](https://i.imgur.com/aVbZ0zz.png)
        * ![](https://i.imgur.com/f5pGT19.png)
    * --breq - Display count, IP addresses, and status code requests from bots to site.
        * ![](https://i.imgur.com/Pp9ggLC.png)
