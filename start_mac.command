#!/bin/bash
PORT=5500
if ! command -v python3 >/dev/null 2>&1; then
  osascript -e 'display alert "Python3 not found. Install Python or use VS Code Live Server."'
  exit 1
fi
( python3 -m http.server "${PORT}" >/dev/null 2>&1 & )
sleep 2
open -a "Google Chrome" "http://localhost:${PORT}"
