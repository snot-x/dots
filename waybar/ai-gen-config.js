{
    "layer": "top",
    "position": "top",
    "height": 30,
    "spacing": 4,
    "margin-top": 6,
    "margin-bottom": 0,
    "margin-left": 8,
    "margin-right": 8,

    "modules-left": ["hyprland/workspaces"],
    "modules-center": ["mpd"],
    "modules-right": ["cpu", "memory", "group/audio-group", "custom/power"],

    "gtk-layer-shell": true,

    "hyprland/workspaces": {
        "format": "{icon}",
        "on-click": "activate",
        "format-icons": {
            "1": "1",
            "2": "2",
            "3": "3",
            "4": "4",
            "5": "5",
            "urgent": "",
            "active": "",
            "default": ""
        },
        "sort-by-number": true
    },

    "mpd": {
        "format": "{stateIcon} {consumeIcon}{randomIcon}{repeatIcon}{singleIcon}{artist} - {album} - {title} ({elapsedTime:%M:%S}/{totalTime:%M:%S})",
        "format-disconnected": "Disconnected ",
        "format-stopped": "{consumeIcon}{randomIcon}{repeatIcon}{singleIcon}Stopped ",
        "interval": 2,
        "consume-icons": {
            "on": " "
        },
        "random-icons": {
            "on": " "
        },
        "repeat-icons": {
            "on": " "
        },
        "single-icons": {
            "on": "1 "
        },
        "state-icons": {
            "paused": "",
            "playing": ""
        },
        "tooltip-format": "MPD (connected)",
        "tooltip-format-disconnected": "MPD (disconnected)"
    },

    "cpu": {
        "format": "{usage}% ",
        "tooltip": false,
        "interval": 1
    },

    "memory": {
        "format": "{}% ",
        "interval": 1
    },

    "group/audio-group": {
        "orientation": "vertical",
        "drawer": {
            "transition-duration": 300,
            "children-class": "audio-drawer",
            "transition-left-to-right": false
        },
        "modules": [
            "pulseaudio",
            "bluetooth"
        ]
    },

    "pulseaudio": {
        "format": "{volume}% {icon}",
        "format-bluetooth": "{volume}% {icon}",
        "format-muted": "",
        "format-icons": {
            "headphone": "",
            "hands-free": "",
            "headset": "",
            "phone": "",
            "portable": "",
            "car": "",
            "default": ["", ""]
        },
        "scroll-step": 1,
        "on-click": "pavucontrol"
    },

    "bluetooth": {
        "format": "",
        "format-disabled": "",
        "format-connected": " {num_connections}",
        "tooltip-format": "{controller_alias}\t{controller_address}",
        "tooltip-format-connected": "{controller_alias}\t{controller_address}\n\n{device_enumerate}",
        "tooltip-format-enumerate-connected": "{device_alias}\t{device_address}",
        "on-click": "blueman-manager"
    },

    "custom/power": {
        "format": "⏻",
        "on-click": "wlogout",
        "tooltip": false
    }
},

* {
    border: none;
    border-radius: 0;
    font-family: "JetBrainsMono Nerd Font";
    font-size: 13px;
    min-height: 0;
}

window#waybar {
    background: transparent;
}

#workspaces,
#mpd,
#cpu,
#memory,
#pulseaudio,
#bluetooth,
#custom-power {
    background: rgba(30, 30, 46, 0.6);
    padding: 0 10px;
    margin: 3px 0;
    border-radius: 8px;
    backdrop-filter: blur(5px);
}

#workspaces button {
    padding: 0 5px;
    color: #cdd6f4;
}

#workspaces button.active {
    color: #a6e3a1;
}

#workspaces button.urgent {
    color: #f38ba8;
}

.audio-drawer {
    background: rgba(30, 30, 46, 0.6);
    border-radius: 8px;
    backdrop-filter: blur(5px);
}
