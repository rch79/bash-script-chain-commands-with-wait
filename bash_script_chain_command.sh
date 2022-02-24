!/bin/bash
set -eux -o pipefail


# Append the & operator to the and of a command. At that point the PID of the newly created
# background process will be stored in a special bash variable $!
# The wait command forces the script to wait for the current process to terminate
# before running the next command
# absolute paths must be used if script is running as a cronjob

~/bin/rclone copy <source> <destination> &
wait $!

~/bin/rclone copy <source> <destination> -P &
wait $!

~/bin/rclone copy <source> <destination> -P &
wait $!

exit 0
