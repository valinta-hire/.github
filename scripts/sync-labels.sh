#!/usr/bin/env bash
# Applies the organisation's one label set, valinta's, to repositories in valinta-hire. It only adds: a label the
# repository already has is left as it is (or, with --update, given valinta's colour and description), and no label
# is ever deleted.
#
#   scripts/sync-labels.sh                    every repository in the organisation except valinta and archived ones
#   scripts/sync-labels.sh <repo> [<repo>...] only those repositories, by name, such as valinta-voice
#   scripts/sync-labels.sh --update [...]     also update existing labels' colour and description
#
# Needs the GitHub CLI, signed in with access to the organisation's repositories.
set -euo pipefail

ORG=valinta-hire
SOURCE="$ORG/valinta"
force=()

if [[ "${1:-}" == "--update" ]]; then
  force=(--force)
  shift
fi

if [[ $# -gt 0 ]]; then
  repos=("$@")
else
  mapfile -t repos < <(gh repo list "$ORG" --no-archived --limit 200 --json name --jq '.[].name' | tr -d '\r')
fi

status=0
for repo in "${repos[@]}"; do
  [[ "$repo" == "valinta" ]] && continue
  echo "== $ORG/$repo"
  if ! gh label clone "$SOURCE" --repo "$ORG/$repo" "${force[@]}"; then
    echo "   failed: $ORG/$repo" >&2
    status=1
  fi
done
exit $status
