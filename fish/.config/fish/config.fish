if status is-interactive
    # Commands to run in interactive sessions can go here
    zoxide init fish | source
    atuin init fish | source
    # PATH-Einträge nur hinzufügen, wenn sie fehlen
    for dir in $HOME/bin $HOME/.cargo/bin $HOME/.local/bin /usr/local/go/bin /snap/bin /opt/hacon/dokugen/bin /usr/bin /opt/nvim-linux-x86_64/bin /opt/cmake/cmake-4.2.2-linux-x86_64/bin
        if test -d $dir
            if not contains $dir $PATH
                set -gx PATH $dir $PATH
            end
        end
    end
    set -x RELBUILDROOT /opt/hacon/dokugen
    set -x BUILDROOT /opt/hacon/dokugen
    set -xg EDITOR nvim
    # set -x PAGER less.sh
		    # set -e DISPLAY 
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
set -g fish_autosuggestion_enabled 1

function make-flamegraph
    perf script -i $argv[1] | ~/FlameGraph/stackcollapse-perf.pl > $argv[1].flat
    and ~/FlameGraph/flamegraph.pl $argv[1].flat > $argv[1].svg
end
