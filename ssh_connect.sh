#!/bin/zsh

# Fixed path and port
KEY_PATH="XXX"
DEFAULT_PORT="XXX"
DEFAULT_USER="XXX"
DEFAULT_SERVER="XXX"

# Navigate to the directory containig the keys
cd "$KEY_PATH" || exit

# Display the available keys
echo "Choose a private key file:"
key=$(gum choose --limit=1 $(ls | grep -v "\."))

# Ask the user to input the port, with a default value
echo "Port:"
port=$(gum input --placeholder="$DEFAULT_PORT")

# Use default port if none provided
if [ -z "$port" ]; then
  port="$DEFAULT_PORT"
fi

# Ask the user to input the username
echo "User:"
user=$(gum input --placeholder="$DEFAULT_USER")

# Use default user if none provided
if [ -z "$user" ]; then
  user="$DEFAULT_USER"
fi

# Ask the user to input the IP address
echo "Server:"
server=$(gum input --placeholder="$DEFAULT_SERVER")

# Use default server if none provided
if [ -z "$server" ]; then
  server="$DEFAULT_SERVER"
fi

# Display the full SSH command and ask for confirmation
command="ssh -i $KEY_PATH/$key -p $port $user@$server"
echo "The command that will be executed is:"
echo "$command"

gum confirm "Shall we proceed?" && eval "$command"
