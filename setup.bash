#!/bin/bash

tmux_conf_path="$HOME/.tmux.conf"
unix_tools_tmux_conf="unixtools/tmux.conf"

# Check if ~/.tmux.conf exists
if [ -f "$tmux_conf_path" ]; then
    echo "The ~/.tmux.conf file already exists."

    # Prompt the user if they want to copy the file
    read -p "Do you want to overwrite it with $unix_tools_tmux_conf? [y/N]: " overwrite_choice
    if [[ "$overwrite_choice" =~ ^[Yy]$ ]]; then
        # Copy the file
        cp "$unix_tools_tmux_conf" "$tmux_conf_path"
        echo "File copied successfully."
    else
        echo "Operation aborted. The existing ~/.tmux.conf remains unchanged."
    fi
else
    # Copy the file if ~/.tmux.conf does not exist
    cp "$unix_tools_tmux_conf" "$tmux_conf_path"
    echo "File copied successfully."
fi
