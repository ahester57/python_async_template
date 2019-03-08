#!/usr/bin/env bash

# Build and package the application for delivery

DIR=$(dirname $0)
SCRIPT_NAME="start.sh"

# Compile the python application into a linux binary
pyinstaller --onefile $DIR/src/run.py

# Initialise start.sh wrapper file
egrep "^####SKELETON####" -A $(wc -l $0 | cut -d' ' -f1) $0\
    | grep -v "####SKELETON####"\
    | base64 -d > $DIR/$SCRIPT_NAME

# Add compiled binary to the wrapper script
echo "####BEGINB64####" >> $DIR/$SCRIPT_NAME
base64 $DIR/dist/run >> $DIR/$SCRIPT_NAME

# Make the script executable
chmod +x $DIR/$SCRIPT_NAME
echo
echo "Run script generated."
echo "Located at ./$SCRIPT_NAME"
exit

####SKELETON####
IyEvdXNyL2Jpbi9lbnYgYmFzaApESVI9JChkaXJuYW1lICQwKQpleHBvcnQgVE1QRElSPSRESVIv
cnVuX3RtcAplY2hvICRUTVBESVIKaWYgW1sgISAtZCAkRElSL3J1bl90bXAgXV07IHRoZW4KICAg
IG1rZGlyICRESVIvcnVuX3RtcApmaQp1bnBhY2tfZXhlYygpIHsKICAgIGVncmVwICJeIyMjI0JF
R0lOQjY0IyMjIyIgLUEgJCh3YyAtbCAkMCB8IGN1dCAtZCcgJyAtZjEpICQwIHwgZ3JlcCAtdiAi
IyMjI0JFR0lOQjY0IyMjIyIgfCBiYXNlNjQgLWQgLSA+ICRUTVBESVIvcnVuX3NjcmlwdAogICAg
Y2htb2QgK3ggJFRNUERJUi9ydW5fc2NyaXB0Cn0KIyBUaGlzIGlzIGNvbW1lbnRlZCBvdXQgZm9y
IHRoZSByZWFzb24gZ2l2ZW4gaW4gbWFrZS5zaAojIGlmIFtbICEgLWUgJFNRTF9GSUxFIF1dOyB0
aGVuCiMgICAgdW5wYWNrX3NxbGl0ZQojIGZpCnVucGFja19leGVjCmVjaG8gIlN0YXJ0aW5nLi4u
IgokVE1QRElSL3J1bl9zY3JpcHQgJEAKcm0gJFRNUERJUi9ydW5fc2NyaXB0CnJtIC1yICRUTVBE
SVIKZXhpdAo=
