#!/bin/sh
if ibus engine | grep "Bamboo" >/dev/null; then
	echo '{ "text": "V", "class": "vi" }'
else
	echo '{ "text": "E", "class": "en" }'
fi
