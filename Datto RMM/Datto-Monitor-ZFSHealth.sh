## By Jacob Polletta
## Version 1.0

#!/bin/bash

## command to check the health of a ZFS pool
zpoolstatus=$(zpool status | egrep -i '(DEGRADED|FAULTED|OFFLINE|UNAVAIL|REMOVED|FAIL|DESTROYED|corrupt|cannot|unrecover)')

## if the zpools status meets any of the grep criteria then the script will error out
if [ "${zpoolstatus}" ]; then
        echo '<-Start Result->'
        echo "status=Error with ZFS pool, Please investigate"
        echo '<-End Result->'
        exit 1
else
        echo '<-Start Result->'
        echo "status=zfs pool is healthy"
        echo '<-End Result->'
        exit 0
fi



















