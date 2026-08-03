#Include Injustice 2 - Functions.ahk

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

SelectFighter(r, c, l, d := 7000) {
	;; ROW
	if (r > 0) {
		PressKey("Down", 1, 50)
	}
	
	;; COL
	if (c < 0) {
		PressKey("Left", abs(c), 50)
	} else {
		PressKey("Right", c, 50)
	}
	
	Sleep, d ;; Give time to load model
	
	;; Loadout
	if (l < 0) {
		PressKey("A")
		Sleep, 1000
		PressKey("Left", abs(l), 50)
	} else if (l > 0) {
		PressKey("A")
		Sleep, 1000
		PressKey("Right", l, 50)
	}
	
	PressEnter()
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

SelectAINamed(name) {
	Switch name {
		Case "atom":			SelectFighter(0, 10, 1)
		Case "atrocitus":		SelectFighter(0, 4, 1)
		Case "aquaman":			SelectFighter(1, -1, 1)
		Case "arrow":			SelectFighter(1, -5, 1)
		Case "bane":			SelectFighter(1, 7, 1)
		Case "batman":			SelectFighter(0, 0, 1)
		Case "blackadam":		SelectFighter(1, 3, 1)
		Case "blackcanary":		SelectFighter(1, 0, 2)
		Case "blackmanta":		SelectFighter(1, -7, 1)
		Case "bluebeetle":		SelectFighter(1, -3, 1)
		Case "brainiac":		SelectFighter(1, 8, 1)
		Case "catwoman":		SelectFighter(0, -4, 2)
		Case "cheetah":			SelectFighter(0, 6, 1)
		Case "cold":			SelectFighter(1, 4, 1)
		Case "cyborg":			SelectFighter(0, -5, 1)
		Case "darkseid":		SelectFighter(1, 1, 1)
		Case "deadshot":		SelectFighter(0, 7, 1)
		Case "drfate":			SelectFighter(1, -4, 1)
		Case "enchantress":		SelectFighter(1, -8, 2)
		Case "firestorm":		SelectFighter(1, -2, 1)
		Case "flash":			SelectFighter(0, -3, 1)
		Case "grodd":			SelectFighter(0, 5, 1)
		Case "harley":			SelectFighter(0, -1, 2)
		Case "hellboy":			SelectFighter(0, -8, 1)
		Case "ivy":				SelectFighter(0, 8, 2)
		Case "joker":			SelectFighter(0, 3, 1)
		Case "lantern":			SelectFighter(0, -2, 1)
		Case "raiden":			SelectFighter(1, 9, 1)
		Case "redhood":			SelectFighter(0, 1, 1)
		Case "robin":			SelectFighter(1, 5, 1)
		Case "scarecrow":		SelectFighter(1, 6, 1)
		Case "supergirl":		SelectFighter(1, -6, 2)
		Case "superman":		SelectFighter(0, 2, 1)
		Case "starfire":		SelectFighter(0, 9, 2)
		Case "swampthing":		SelectFighter(0, -6, 1)
		Case "subzero":			SelectFighter(0, -7, 1)
		Case "tmnt1":			SelectFighter(1, 10, 1)
		Case "tmnt2":			SelectFighter(1, 10, 1)
		Case "wonderwoman":		SelectFighter(1, 2, 2)
	}
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

SelectFighterNamed(name) {
	Switch name {
		Case "atom":			SelectFighter(0, 10, 0)
		Case "atrocitus":		SelectFighter(0, 4, 0)
		Case "aquaman":			SelectFighter(1, -1, 0)
		Case "arrow":			SelectFighter(1, -5, 0)
		Case "bane":			SelectFighter(1, 7, 0)
		Case "batman":			SelectFighter(0, 0, 0)
		Case "blackadam":		SelectFighter(1, 3, 0)
		Case "blackcanary":		SelectFighter(1, 0, 0)
		Case "blackmanta":		SelectFighter(1, -7, 0)
		Case "bluebeetle":		SelectFighter(1, -3, 0)
		Case "brainiac":		SelectFighter(1, 8, 0)
		Case "catwoman":		SelectFighter(0, -4, 0)
		Case "cheetah":			SelectFighter(0, 6, 0)
		Case "cold":			SelectFighter(1, 4, 0)
		Case "cyborg":			SelectFighter(0, -5, 0)
		Case "darkseid":		SelectFighter(1, 1, 0)
		Case "deadshot":		SelectFighter(0, 7, 0)
		Case "drfate":			SelectFighter(1, -4, 0)
		Case "enchantress":		SelectFighter(1, -8, 0)
		Case "firestorm":		SelectFighter(1, -2, 0)
		Case "flash":			SelectFighter(0, -3, 0)
		Case "grodd":			SelectFighter(0, 5, 0)
		Case "harley":			SelectFighter(0, -1, 0)
		Case "hellboy":			SelectFighter(0, -8, 0)
		Case "ivy":				SelectFighter(0, 8, 0)
		Case "joker":			SelectFighter(0, 3, 0, 100)
		Case "lantern":			SelectFighter(0, -2, 0)
		Case "raiden":			SelectFighter(1, 9, 0)
		Case "redhood":			SelectFighter(0, 1, 0)
		Case "robin":			SelectFighter(1, 5, 0)
		Case "scarecrow":		SelectFighter(1, 6, 0)
		Case "supergirl":		SelectFighter(1, -6, 0)
		Case "superman":		SelectFighter(0, 2, 0)
		Case "starfire":		SelectFighter(0, 9, 0)
		Case "swampthing":		SelectFighter(0, -6, 0)
		Case "subzero":			SelectFighter(0, -7, 0)
		Case "tmntDon":			SelectFighter(1, 10, 0)
		Case "tmntLeo":			SelectFighter(1, 10, 1)
		Case "tmntMike":		SelectFighter(1, 10, 3)
		Case "tmntRaph":		SelectFighter(1, 10, 4)
		Case "wonderwoman":		SelectFighter(1, 2, 0)
	}
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;