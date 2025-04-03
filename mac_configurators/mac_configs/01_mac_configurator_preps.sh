
#!/bin/sh

# Last Updated : 20250331-131912
# Last Updated : 20250401-162228

# To do this using the Mac OS X GUI:
# 1. Open “System Preferences.”
# 2. Open the “Accounts”/“Users & Groups” preference pane and unlock the preference pane if applicable.
# 3. On the user you wish to change the shell, control+click or right click on the user and choose “Advanced Options…”
# 4. Where it says “Login Shell:” change this to the shell you wish to use.
# Of note, this location is where you can change your home directory, UUID, User ID, Group ID, and short name if you're uncomfortable with the Terminal.

# Change the Shell to Bash Shell

chsh -s /bin/bash

# Refresh Terminal to use bash shell

# exec bash

echo "Running in the original Bash shell"
bash -c 'echo "Inside a new Bash subprocess"'
echo "Back to the original Bash shell"

source ~/.bash_profile

# Confirm that bash is being used as shell -- Execute Only if Needed.

# echo $SHELL

# Create the required bash files

touch .bash_profile && touch .bashrc && touch .bash_functions && touch .bash_aliases && mkdir .config

# Install Brew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Supporting commands to update the bash_profile and refresh the terminal to start using brew

echo >> ~/.bash_profile

echo 'eval "$(/usr/local/bin/brew shellenv)"' >> ~/.bash_profile

eval "$(/usr/local/bin/brew shellenv)"
