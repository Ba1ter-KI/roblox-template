#!/usr/bin/env bash
# Syntax-/Format-/Typ-Gate vor jedem Commit. Läuft auf Jarvis (ARM64).
# Nutzung: bash scripts/check.sh
set -euo pipefail
cd "$(dirname "$0")/.."

STYLUA="${STYLUA:-$HOME/.local/bin/stylua}"
LUAU_LSP="${LUAU_LSP:-$HOME/.local/bin/luau-lsp}"

echo "== stylua --check =="
"$STYLUA" --check src/

echo "== luau-lsp analyze (roblox definitions) =="
"$LUAU_LSP" analyze --definitions @roblox=globalTypes.d.luau src/

echo "OK: alle Checks bestanden"
