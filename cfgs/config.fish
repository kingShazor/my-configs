if status is-interactive
    # Commands to run in interactive sessions can go here
    zoxide init fish | source
    set -x PATH $PATH /opt/hacon/dokugen/bin
    set -x RELBUILDROOT /opt/hacon/dokugen
    set -x BUILDROOT /opt/hacon/dokugen
    set -x DISPLAY ""
    if not contains $HOME/.local/bin $PATH
        set -Ux PATH $PATH $HOME/.local/bin
    end

    # Sourcen der Setup-Datei
    source /home/pme/.config/tps_dev_setup/profile
end
alias ls='ls -la'
