#!/usr/bin/env bash
# Publish about.urirun.com (static urirun presentation).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
REMOTE="${IFURI_DEPLOY_HOST:-ifuri@ifuri.com}"
DOCROOT="${URIRUN_ABOUT_DOCROOT:-/var/www/vhosts/ifuri.com/about.urirun.com}"
echo "== deploy about.urirun.com -> ${REMOTE}:${DOCROOT} =="
rsync -az --delete \
  --exclude '.git' --exclude 'scripts' --exclude 'Makefile' \
  --exclude '.github' --exclude '*.md' --exclude 'CNAME' \
  "${ROOT}/" "${REMOTE}:${DOCROOT}/"
ssh "${REMOTE}" "cd '${DOCROOT}' && find . -type d -exec chmod 755 {} + && find . -type f -exec chmod 644 {} +"
curl -fsSI "https://about.urirun.com/" | head -3 || true
echo done
