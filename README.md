# Roblox Template

Wiederverwendbare Basis für Roblox-Spiel-Projekte (Cedrik + Hermes-Agent).
Ziel: Ein neues Spiel startet aus diesem Template in Minuten statt Stunden.

## Setup auf dem MacBook (einmalig)

Vollständige Anleitung inkl. MCP-Bridge: `~/obsidian-vault/30-Projekte/Roblox/Setup-Mac.md`

1. **Roblox Studio** installieren: https://www.roblox.com/create
2. **Rojo-Plugin:** `Rojo.rbxm` aus Release v7.7.1 → Studio-Plugins-Ordner (die Rojo-CLI läuft auf Jarvis — auf dem Mac ist nichts zu installieren)

## Workflow pro Entwicklungs-Session

Rojo läuft auf Jarvis (Repo-Master bleibt dort); Studio verbindet sich über Tailscale.

1. Agent startet `rojo serve` auf Jarvis (bindet an die Jarvis-Tailscale-IP via `serveAddress` im `default.project.json`)
2. In Studio: Tab "Plugins" → Rojo → Connect (Adresse `100.73.124.78`, Port `34872` — merkt sich das Plugin)
3. Agent editiert `src/` auf Jarvis → Studio synced live → testen → Feedback an Agent
4. Vor Commit: Agent prüft Syntax/Lint lokal auf Jarvis, commitet mit Konvention (feat:/fix:/chore:)

## Neues Spiel anlegen

1. `cp -R ~/projects/roblox-template/ ~/projects/<spielname>/ && cd ~/projects/<spielname>`
2. `rm -rf .git && git init` (frische Historie)
3. `default.project.json`: `name` anpassen
4. `src/shared/init.luau`: `GameName` anpassen
5. Im Vault: `30-Projekte/Roblox/` → Spiel-Unterordner + Game Design Doc anlegen
6. Erste Session: Konzept schärfen → MVP-Scope → Entwicklung

## Struktur

- `src/server/` — Server-Logik (autoritativ)
- `src/client/` — UI, Input, lokale Effekte
- `src/shared/` — Types, Config, geteilte Utilities
- `.hermes.md` — Regeln, die Hermes in jeder Session dieses Repos automatisch lädt
