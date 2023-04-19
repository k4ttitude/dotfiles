#!/usr/bin/env sh

ICON_PADDING_RIGHT=10

APP=$(yabai -m query --windows --window | jq -r .app)
case $APP in
  "Alacritty")
    ICON_PADDING_RIGHT=8
    ICON=
    ;;
  "Code")
    ICON_PADDING_RIGHT=8
    ICON=󰨞
    ;;
  "TablePlus")
    ICON_PADDING_RIGHT=6
    ICON=
    ;;
  "Calendar")
    ICON_PADDING_RIGHT=8
    ICON=
    ;;
  "Discord")
    ICON=ﭮ
    ;;
  "FaceTime")
    ICON_PADDING_RIGHT=11
    ICON=
    ;;
  "Finder")
    ICON=
    ;;
  "Google Chrome")
    ICON_PADDING_RIGHT=7
    ICON=
    ;;
  "Messages")
    ICON=
    ;;
  "Slack")
    ICON_PADDING_RIGHT=8
    ICON=󰒱
    ;;
  "Obsidian")
    ICON_PADDING_RIGHT=12
    ICON=
    ;;
  "Spotify")
    ICON=
    ;;
  *)
    ICON=﯂
    ;;
esac

TITLE_LEN=$1
TITLE=$(yabai -m query --windows --window | jq -r .title | sed "s/\(.\{$TITLE_LEN\}\).*/\1.../")

sketchybar --set $NAME.name label="$APP | $TITLE"
sketchybar --set $NAME icon=$ICON icon.padding_right=$ICON_PADDING_RIGHT
