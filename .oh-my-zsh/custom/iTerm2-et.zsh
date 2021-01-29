# tab-change <profile name> change the profile for the tab
function tab-change() {
    NAME=$1; if [ -z "$NAME" ]; then NAME="Default"; fi
    echo -e "\033]50;SetProfile=$NAME\a"
}

# reset the terminal profile to Default
# when exit from the ssh session
function tab-reset() {
    NAME="Default"
    echo -e "\033]50;SetProfile=$NAME\a"
}

function color-ssh() {
    if [[ -n "$ITERM_SESSION_ID" ]]; then
        trap "tab-reset" INT EXIT
        tab-change DevServer
    fi
    ssh $*
}

function color-et() {
    if [[ -n "$ITERM_SESSION_ID" ]]; then
        trap "tab-reset" INT EXIT
        tab-change DevServer
    fi
    et $*
}

compdef _ssh tab-change=ssh

# creates an alias to ssh
# when execute ssh from the terminal it calls to colorssh function
alias ssh="color-ssh"
alias et="color-et"