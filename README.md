# Roblox Template

Wiederverwendbare Basis für Roblox-Spiel-Projekte (Cedrik + Hermes-Agent).
Ziel: Ein neues Spiel startet aus diesem Template in Minuten statt Stunden.

## Setup auf dem MacBook (einmalig)

Vollständige Anleitung inkl. MCP-Bridge: `~/obsidian-vault/30-Projekte/Roblox/Setup-Mac.md`

1. **Roblox Studio** installieren: https://www.roblox.com/create
2. **Rojo** installieren: `brew install rojo`
3. **Rojo-Plugin in Studio:** Von https://github.com/rojo-rbx/rojo/releases die neueste `rojo.rbxm` laden → Studio → Tab "Plugins" → "Plugins Folder" öffnen → Datei hineinlegen → Studio neu starten
4. Optional (Linting/Formatting): `brew install selene stylua` — danach einmal `selene generate-roblox-std` ausführen und in `selene.toml` auf `std = "luau+roblox"` stellen

## Workflow pro Entwicklungs-Session

1. Im Repo: `rojo serve` starten
2. In Studio: Tab "Plugins" → Rojo → Connect
3. Agent editiert `src/` → Studio synced live → testen → Feedback an Agent
4. Vor Commit: Agent prüft Syntax/Lint, commitet mit Konvention (feat:/fix:/chore:)

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
