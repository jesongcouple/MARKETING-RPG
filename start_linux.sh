#!/usr/bin/env bash
PORT=5500
if ! command -v python3 >/dev/null 2>&1; then
  echo "[!] python3 not found. Install it or run via other dev server."
  exit 1
fi
( python3 -m http.server "${PORT}" >/dev/null 2>&1 & )
sleep 2
if command -v xdg-open >/dev/null 2>&1; then
  xdg-open "http://localhost:${PORT}"
else
  echo "Open http://localhost:${PORT} in your browser."
fi
