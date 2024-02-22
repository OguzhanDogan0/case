#!/bin/bash
while true; do
    line_count=$(wc -l < output.txt)
    if [ $line_count -eq 10 ]; then
        pid=$(pgrep -f hello.sh)
        kill $pid
        break
    fi
    sleep 1
    rm -rf output.txts
    nohup ./daemon_script.sh &
done