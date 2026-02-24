#!/usr/bin/env bash

set -euo pipefail

echo "=== DTU VS Code Uninstall (macOS) ==="
echo

remove_vscode_app() {
    local app_path
    app_path="/Applications/Visual Studio Code.app"
    if [[ ! -d "$app_path" ]]; then
        echo "VS Code app not found at $app_path; skipping."
        return 0
    fi

    if [[ "$EUID" -eq 0 ]]; then
        rm -rf "$app_path"
    elif [[ "${CLI_MODE:-}" == "true" ]]; then
        sudo rm -rf "$app_path"
    else
        osascript -e "do shell script \"rm -rf '$app_path'\" with prompt \"DTU setup needs admin rights to remove VS Code.\" with administrator privileges"
    fi
    echo "Removed: $app_path"
}

remove_user_data() {
    rm -rf "$HOME/Library/Application Support/Code"
    rm -rf "$HOME/.vscode"
    echo "Removed VS Code user data (~/.vscode and Application Support/Code)."
}

remove_symlink() {
    if [[ -L "/usr/local/bin/code" ]]; then
        if [[ "$EUID" -eq 0 ]]; then
            rm -f /usr/local/bin/code
        elif [[ "${CLI_MODE:-}" == "true" ]]; then
            sudo rm -f /usr/local/bin/code
        else
            osascript -e "do shell script \"rm -f /usr/local/bin/code\" with prompt \"DTU setup needs admin rights to remove VS Code CLI symlink.\" with administrator privileges" || true
        fi
    fi
    if [[ -L "$HOME/bin/code" ]]; then
        rm -f "$HOME/bin/code"
    fi
}

remove_vscode_app
remove_user_data
remove_symlink

echo
echo "=== VS Code uninstall complete ==="
