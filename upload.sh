#!/bin/bash
HOST='patinoweb.com'
USER='patinoweb'
PASS='patinoweb'
TARGETFOLDER=''
SOURCEFOLDER=''

lftp -f "
open $HOST
user $USER $PASS
lcd $SOURCEFOLDER
mirror --reverse --delete --verbose $SOURCEFOLDER $TARGETFOLDER
bye
"