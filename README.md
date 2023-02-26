# piHole
PiHole realted setting and blocklists.

# update_reboot.sh
- To update, upgrade the basic raspian OS and pihole and then reboot every saturday 4 am.
- Ensure to add this file in the `sudoers` file so that it does not require password to run the individual commands in them.
- `sudo visudo` and add following line to the file -
    ```bash
    pi ALL=(ALL) NOPASSWD: /home/pi/update_reboot.sh

    ```

# cron jobs
- `crontab -e` - to add cron jobs.
- `cronjob -l` - to list all cron jobs.
- `0 4 * * 6 /home/pi/update_reboot.sh > /dev/null 2>&1` - to update, upgrade the basic raspian OS and pihole and then reboot every saturday 4 am.
- `0 4 * * * pihole updateGravity > /home/pi/pihole.log 2>&1` - to update the blocklist everyday at 4 am.