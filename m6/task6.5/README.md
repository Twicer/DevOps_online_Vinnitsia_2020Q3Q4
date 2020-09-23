# Task 5.6
## Custom backup

1. If script is run without options you'll get a man page:
    * ![](https://i.imgur.com/tCzFpR5.png)
2. Run script:
    * ![](https://i.imgur.com/6m5S2f5.png)
3. Results:
    * ![](https://i.imgur.com/jZ31PoG.png)
4. Report about success backup files is writing to **backup.log**, about error in backup to **error.log**:
    * ![](https://i.imgur.com/F58iW5V.png)
5. If no changes is made to source directory, no files in the destination directory won't be overwritten:
    * ![](https://i.imgur.com/d7CwAhq.png)
    * ![](https://i.imgur.com/69PuTaG.png)
6. If we create a new file in the source directory, make backup then delete those file from the source directory and also make backup, all these changes with source directory will also be done with destination directory. We will see all that changes in the log file with actions (create, delete), date, and file names:
    * ![](https://i.imgur.com/KrXw5yt.png)
    * ![](https://i.imgur.com/peWU7eM.png)
    * ![](https://i.imgur.com/RymDySx.png)
7. Add script executing to the crontab one time per minute:
    * ![](https://i.imgur.com/c24BO3h.png)
8. See crontab log, to make sure that job is executing:
    * ![](https://i.imgur.com/XiHRxFi.png)
9. Check the backup directory:
    * ![](https://i.imgur.com/x9whCiL.png)
10. Check log file:
    * ![](https://i.imgur.com/POnkEM1.png)
    * Report is writing to the log file only when there are any changes (adding or deleting files).
11. Make some changes in the source directory to make sure that changes is logging correctly:
    * ![](https://i.imgur.com/ycssPFP.png)
    * ![](https://i.imgur.com/hz1Pj9V.png)
