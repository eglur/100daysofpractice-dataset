#!/bin/bash

PROJECT=~/sci/100daysofpractice-datase
PYTHON=$PROJECT/venv/bin/python
SRC=$PROJECT/src
GET_USERNAME="$PYTHON $SRC/get-username.py"
SHORTCODES=$PROJECT/shortcodes/shortcodes-test.txt
PROFILES=$PROJECT/profiles
CSV=$PROFILES/shortcode-username.csv

while read SHORTCODE; do
    USERNAME=$($GET_USERNAME $SHORTCODE)
    PAIR=$SHORTCODE,$USERNAME
    echo $PAIR
    echo $PAIR >> $CSVFILE
    instaloader $USERNAME
done <$SHORTCODES
