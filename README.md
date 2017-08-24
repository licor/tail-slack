# tail-slack
A bash script to post every new line on file to slack channel. 

## Steps to use
1. Enable [Incoming Webhook](https://api.slack.com/incoming-webhooks) on Slack
2. Edit tail-slash.sh and setup the **HOOK_URL** variable on line 4.
3. Run the tail-slash.sh.

TIP: Execute this bash script with nohup command. Example:

```
# nohup tail-slash.sh <file> <channel>
```
