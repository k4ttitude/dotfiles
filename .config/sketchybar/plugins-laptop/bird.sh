#!/usr/bin/env sh

case "$SENDER" in
  "mouse.clicked") 
    if [ $MODIFIER = "shift" ]; then
      open "https://twitter.com/home"
    else
      open "https://github.com/"
    fi
esac

