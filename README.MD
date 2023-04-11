# Database Backup Script

This is a Bash script for creating a backup copy of a MySQL database, created by Ruslan Akhmetov.

## Requirements

- MySQL client (`mysqldump`)
- Bash shell

## Installation

1. Clone this repository or copy the script to your server.
2. Set the database username, password, and name, as well as the backup directory path in the script.
3. Make the script executable: `chmod +x backup.sh`
4. Test the script by running `./backup.sh`. If the backup file is created successfully, you're all set!

## Usage

You can run the script manually by executing `./backup.sh`.

To automate the script, you can add a cron job to execute it at regular intervals. For example, to run the script every
day at midnight, add the following to your crontab (`crontab -e`):

```javascript
0
0 * * * /path/
to / backup.sh
```

## License

This script is released under the MIT License. See LICENSE file for details.

## Contributions

Contributions to this script are welcome! Please feel free to fork the repository, make your changes, and submit a pull
request.

## Disclaimer

This script is provided as-is, without any warranty or guarantee of any kind. Use at your own risk.
