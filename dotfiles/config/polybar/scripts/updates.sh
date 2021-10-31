#!/usr/bin/env bash

function fetch_updates {
  ! type -P fakeroot >/dev/null && return 1

  if [[ -z $CHECKUPDATES_DB ]]; then
    CHECKUPDATES_DB="${TMPDIR:-/tmp}/checkup-db-${USER}/"
  fi

  trap 'rm -f $CHECKUPDATES_DB/db.lck' INT TERM EXIT

  DBPath="$(pacman-conf DBPath)"
  if [[ -z "$DBPath" ]] || [[ ! -d "$DBPath" ]]; then
    DBPath="/var/lib/pacman/"
  fi

  mkdir -p "$CHECKUPDATES_DB"
  ln -s "${DBPath}/local" "$CHECKUPDATES_DB" &> /dev/null
  if ! fakeroot -- pacman -Sy --dbpath "$CHECKUPDATES_DB" --logfile /dev/null &> /dev/null; then
    return 1
  fi

  pacman -Qu --dbpath "$CHECKUPDATES_DB" 2> /dev/null | wc -l
  return 0
}

UPDATES=0

function count_updates {
  TMP=$(fetch_updates)
  [ ! $? -eq 0 ] && return 1
  UPDATES=$TMP
  return 0
}

while true; do
  count_updates

  if (( $UPDATES == 1 )); then
    echo " $UPDATES update"
  else
    echo ""
  fi
  sleep 30
done
