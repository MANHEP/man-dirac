#!/bin/bash
/bin/hostname
/bin/date
/bin/ls -la
echo $*
printenv

# $2 has the full LFN of the file this job has to process
# The file is downloaded to the job working directory by DIRAC

# $3 is the unique DIRAC Job ID

# Get just the filename from the full LFN
localfile=`echo $2 | sed 's:^.*/::'`
tar xvf $localfile

# The file in each tar file is always called data.txt
wc data.txt > $3.wc.log
