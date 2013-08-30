#!/bin/ksh

####output to log and console using pipeline#############
    npipe=log.tmp
    trap "rm -f $npipe" EXIT
    mknod $npipe p
    tee <$npipe logfile.txt &
    #exec 1>&-
    exec 1>$npipe
	exec 2>$npipe
	
	
	echo "Test output"
	echo "Outputs to both console and logfile"
	ech "Error message. To console only"