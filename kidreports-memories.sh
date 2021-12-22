#!/bin/bash

# Set Your Start Month/Year and End Month/Year (no validation so please make sure it is accurate)
declare -i START_MONTH=4
declare -i START_YEAR=2020
declare -i END_MONTH=12
declare -i END_YEAR=2021

# Please do not edit below unless you know what you are doing
declare -i NUM_MEMORIES=$(( (END_YEAR - START_YEAR + 1) * 12 - START_MONTH + 1 + END_MONTH - 12 ))
echo "Number of memories to fetch: $NUM_MEMORIES" 

declare -i MONTH=START_MONTH
declare -i YEAR=START_YEAR

for ((i=0; i<NUM_MEMORIES; i++)); do
   URL="https://secure.kidreports.com/usermedia/download?startMonth=$MONTH&startYear=$YEAR"
   echo "Getting memories for $MONTH/$YEAR"
   curl --http1.1 -O -J --connect-timeout 120 -H @cookie_file  $URL
   let "MONTH=MONTH+1"
   if [ $MONTH -gt 12 ]
   then
   	let "MONTH=1"
   	let "YEAR=YEAR+1"
   fi 
done
