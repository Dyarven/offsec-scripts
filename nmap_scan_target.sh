#!/bin/bash bash
# Usage: script.sh [target]

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <TARGET>"
  exit 1
fi

TARGET="$1"
OUTFILE="${TARGET}-discovery.result"
nmap -p- -sS -sC -sV --open -vvv -n -Pn "${TARGET}" -oN "${OUTFILE}"

echo "[*] ${OUTFILE} ready"
