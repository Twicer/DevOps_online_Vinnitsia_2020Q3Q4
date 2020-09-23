# Task 5.6
## Custom backup

1. If script is run without options you'll get a man page:
2. Add script executing to the crontab one time per minute:
    * ![](https://i.imgur.com/c24BO3h.png)
3. See crontab log, to make sure that job is executing:
    * ![](https://i.imgur.com/XiHRxFi.png)
4. Check the backup directory:
    * ![](https://i.imgur.com/x9whCiL.png)
5. Check log file:
    * ![](https://i.imgur.com/POnkEM1.png)
    * Report is writing to the log file only when there are any changes (adding or deleting files).
6. Make some changes in the source directory to make sure that changes is logging correctly:
    * ![](https://i.imgur.com/ycssPFP.png)
    * ![](https://i.imgur.com/hz1Pj9V.png)
