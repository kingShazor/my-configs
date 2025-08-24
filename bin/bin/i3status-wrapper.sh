#!/bin/bash
HOST=$(hostname)

if [ "$HOST" = "shazor-Ubuntu" ]; then
    exec i3status-rs ~/.config/i3status-rust/config_ubuntu_gaming.toml
else
    exec i3status-rs ~/.config/i3status-rust/config.toml --profile laptop
fi
