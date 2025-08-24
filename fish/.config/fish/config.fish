if status is-interactive
    # Commands to run in interactive sessions can go here
    zoxide init fish | source
    set -x PATH $PATH /opt/hacon/dokugen/bin
    set -x RELBUILDROOT /opt/hacon/dokugen
    set -x BUILDROOT /opt/hacon/dokugen
    set -xg EDITOR nvim
    set -x PATH $HOME/bin $PATH
    set -x PAGER less.sh
    if test -f ~/atuin/bin
      set -x PATH ~/.atuin/bin $PATH
      atuin init fish | source
    end
    set -x PATH ~/go/bin $PATH
    set -x PATH /snap/bin $PATH
    set -x PATH $HOME/.cargo/bin $PATH
    #set -x DISPLAY ""
    if not contains $HOME/.local/bin $PATH
        set -Ux PATH $PATH $HOME/.local/bin
    end 
    if test -f ~/abbr.fish
        source ~/abbr.fish
    end
end

# Sourcen der Setup-Datei
if test -f /home/pme/.config/tps_dev_setup/profile
  source /home/pme/.config/tps_dev_setup/profile
end
# end
alias ls='ls -la'
