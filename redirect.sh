#!/bin/sh 
. redir.env
echo "Echoed to console only"
log "Written to log file only"
message "To console and log"
echo "This is stderr. Written to log file only" 1>&2