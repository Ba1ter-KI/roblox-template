--!strict
-- Geteilter Code zwischen Server und Client (Types, Config, Utilities).
-- Beispiel-Config: zentrale Balance-Werte — hier anpassen, nicht im Code verstreuen.

export type GameConfig = {
	GameName: string,
	StartCurrency: number,
}

local Config: GameConfig = {
	GameName = "Template Game",
	StartCurrency = 100,
}

return Config
