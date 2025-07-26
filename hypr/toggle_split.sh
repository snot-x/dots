#!/bin/bash

CURRENT_RATIO=$(hyprctl activeworkspace | grep 'splitratio' | awk '{print $2}')

if [[ "$CURRENT_RATIO" == "1.000000" ]]; then
    hyprctl dispatch splitratio 0.5
else
    hyprctl dispatch splitratio 1.0
fi
