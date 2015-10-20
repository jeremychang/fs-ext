#!/bin/bash

EXT=$1

echo 'BEGIN:VCARD'
echo 'VERSION:3.0'
echo 'FN:'$EXT
echo 'N:'$EXT';;;;'
echo 'TEL;TYPE=WORK:'$EXT
echo 'END:VCARD'
