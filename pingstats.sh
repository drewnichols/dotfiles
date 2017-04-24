ping 8.8.8.8 | xargs -L 1 -I '{}' date '+%+: {}' | tee -a pingstats.txt
