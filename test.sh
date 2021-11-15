chk_root () {
  if [ ! $( id -u ) -eq 0 ]; then
    echo; echo; echo; echo; echo "Must be run as root!"
    exit
  fi
}
chk_root

DURATION=$1
if [ $# -ne 1 ]; then
    DURATION=10
fi

plymouthd; plymouth --show-splash; sleep $DURATION; plymouth quit
