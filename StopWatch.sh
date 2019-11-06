echo "Starting stopwatch. Press enter to stop"
t1=$(python -c 'import time; print(repr(time.time()))')
while true; do
   t2=$(python -c 'import time; print(repr(time.time()))')
   seconds=$(expr $t2-$t1 |bc)
   echo -ne " ---- $seconds seconds \r"
done
