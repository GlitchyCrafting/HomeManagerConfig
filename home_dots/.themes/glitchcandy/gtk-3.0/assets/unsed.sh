#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#15131a/g' \
         -e 's/rgb(100%,100%,100%)/#fffced/g' \
    -e 's/rgb(50%,0%,0%)/#282430/g' \
     -e 's/rgb(0%,50%,0%)/#9e48ff/g' \
 -e 's/rgb(0%,50.196078%,0%)/#9e48ff/g' \
     -e 's/rgb(50%,0%,50%)/#282430/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#282430/g' \
     -e 's/rgb(0%,0%,50%)/#fffced/g' \
	"$@"
