#bin/sh
od  -vN 32 -An -tx1 /dev/urandom | tr -d ' \n' && echo ""