#Include Injustice 2 - Functions.ahk
#Include Injustice 2 - Fighter Mapping.ahk

#Persistent
Replay()
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Replay() {
	Loop, 1 {
		TowerReplay("cold", 12, 50, 50000)
		;;BattleAIFriends()
		;;EndlessReplay("redhood")
	}
	;;ExitMenu(5)
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Start(fighter, difficulty := 0) {
	FocusWindow()
	Sleep, 3000
	PressEnter()
	Sleep, 2000

	SelectAINamed(fighter)
	SelectDifficulty(difficulty)
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

BattleAIFriends() {
	;; Run from Multiplayer -> Battle AI -> Fight With Friends
	FocusWindow()
	PressEnter()
	Sleep, 3000
	
	;; Select 1st Friend
	PressEnter()
	Sleep, 1000
	;; Select Fighters (previously selected)
	PressEnter(3)
	Sleep, 500
	PressEnter()
	
	;; Select Speed 4x
	Sleep, 2500
	PressSpace()
	Sleep, 800
	PressSpace()

	;; 3 Fights Max
	Sleep, 80000 ;; DURATION

	PressEnter()
	Sleep, 3000
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

EndlessReplay(c) {
	Start(c)
	Loading(30000)
	
	Loop, 10000 {
		Sleep, 1000
		PressSpace()
		PressEnter()
	}
	Loading(40000)
	ExitMenu(1)
	Sleep, 10000
	PressEnter()
	Sleep, 3000
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

TowerReplay(c, n := 1, skip := 30, t := 90000) {
	Start(c)
	Loop % n - 1 {
		AutoContinue(skip)
		Sleep, t
	}
	;; More time offset in last fight
	AutoContinue(skip)
	Sleep, 150000

	PressEnter(4)
	Sleep, 6000
	PressEnter()
	Sleep, 2000
	PressEnter(8)
	Sleep, 1000
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
