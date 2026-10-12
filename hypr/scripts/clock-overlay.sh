#!/usr/bin/env bash

monitor=$(hyprctl monitors -j | jq '.[] | select(.focused==true) | .id')

eww open clock --screen $monitor
