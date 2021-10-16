#Include Injustice 2 - Functions.ahk
#Include Injustice 2 - Fighter Mapping.ahk
#Include Injustice 2 - Final Hit Mapping.ahk

#Persistent
EventReplay()
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

EventReplay() {
	
	Loop, 100 {
		FinalHitLoop("atrocitus", 6000,	3, 3, 1100)
		Sleep, 4000
		RestartMatch()
	}
	
	ExitMenu(4)
	EventReplay()
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

FinalHitLoop(fighter, loading, b := 10, x := 5, d := 1000) {	
;;	Start(fighter, -2)
;;	Autocontinue(5)
	
	Sleep, %loading%
	Autocontinue()
	
	Loop, %b% {
		Sleep, 1000
		BounceAttacks(1,d)
	}
	
	CharacterPower()
	
	Loop, %x% {
		Atrocitus_HatePounce()
		Sleep, 4000
	}
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

SuperMoveLoop(b := 20, x := 5, d := 1000) {	
	Loading(35000)
	PressSpace()
	
	Loop, %b% {
		Duck()
		Sleep, 1000
		BounceAttacks(0,0,1,d)
	}
	
	Loop, %x% {
		Duck()
		Sleep, 1000
		Uppercut()
		Sleep, 1000
		SuperMove()
	}
	
	Loop,%x% {
		PressEnter()
	}
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

ArenaTransitionLoop() {
	Loop, 10 {
		PressKeys("D","W")
		Sleep, 600
	}
	Loop, 2 {
		PressKeys("A","W")
		Sleep, 600
	}
	Loop, 2 {
		Sleep, 600
		BounceAttacks(1, 1200)
	}
	Sleep, 10000
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

TowerSelect() {
	Sleep, 1500
	FocusWindow()
	PressEnter()
	Sleep, 2000
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

SkipIntro(t := 9000) {
	Sleep, t ;; Loading
	FocusWindow()
	PressSpace()
	Sleep, 1700
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Start(fighter, difficulty := 0) {
	FocusWindow()
	Sleep, 1500
	PressEnter()
	Sleep, 2000
	
	if (difficulty < 0) {
		SelectFighterNamed(fighter)
	} else {
		SelectAINamed(fighter)
	}
	SelectDifficulty(difficulty)	
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
