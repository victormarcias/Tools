;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;	INJUSTICE 2 FUNCTIONS	;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

FocusWindow() {
	;; Focus on the Injustice window
	IfWinExist, Injustice
		WinActivate
	else
		Exit
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

AutoContinue(n := 1) {
	FocusWindow()
	Loop, %n% {
		PressKey("Space", 1, 200)
		PressKey("Enter", 1, 200)
		Sleep, 200
	}
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

PressKey(k, x := 1, s := 100) {
	;; s: smaller = faster
	Loop, %x% {
		Send {%k% down}
		Sleep, s
		Send {%k% up}
		Sleep, s
	}
}

PressKeys(k, x, t := 80) {
	;; Simultaneous keys for combos
	Send {%k% down}
	Sleep, 20
	Send {%x% down}
	Sleep, t
	Send {%k% up}
	Send {%x% up}
}

PressEnter(x := 1) {
	PressKey("Enter", x)
}

PressSpace(x := 1) {
	PressKey("Space", 1)
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

SelectDifficulty(x) {
	Sleep, 1000
	
	;; Easier
	if (x < 0) {
		PressKey("Left", abs(x))
	}
	;; Harder
	if (x > 0) {
		PressKey("Right", x)
	}
	PressEnter()
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Loading(x := 35000) {
	Sleep, x
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

ExitMenu(x) {
	PressKey("Escape")
	Sleep, 2000
	PressKey("Down", x) ;; Scroll to option X in list
	PressEnter()
	PressKey("Right") ;; -> Confirm
	PressEnter()
	Sleep, 2000
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

RestartMatch() {
	PressKey("Escape")
	Sleep, 1000
	PressKey("Up", 2, 50)
	PressEnter()
	PressKey("Right", 1, 50) ;; -> Confirm
	PressEnter()
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

HitSequence(params*) {
	for index,param in params {
		PressKey(param, 1, 10)
	}
	;; Example D,F,1 -> ("S","D","I")
}

MeterBurn(x := 4) {
	PressKey("O", x)
}

CharacterPower() {
	PressKey("L")
}

Uppercut() {
	PressKeys("S","I")
}

Duck(x := 1000) {
	Send {S down}
	Sleep, x
	Send {S up}
}

Dash(b := false) {
	if (b)
		HitSequence("A","A")
	else 
		HitSequence("D","D")
	
	Sleep, 600
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

SuperMove() {
	Sleep, 200
	Send {U down}
	Send {O down}
	Sleep, 75
	Send {U up}
	Send {O up}
	Sleep, 200
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Fight(ls, ft) {
   FocusWindow()
   Sleep, 1000
   PressEnter()
   Sleep, ls ;; Loading screen

   FocusWindow()
   PressKey("Space") ;; Skip Intro
   Sleep, 1000
   PressEnter() ;; Accept Intro Dialog if any

   Sleep, ft ;; Fight duration

   FocusWindow()
   PressEnter() ;; Dismiss Victory Stats
   Sleep, 1000
   PressEnter(4) ;; Dismiss Victory Rewards
   Sleep, 1000
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Rewards() {
	FocusWindow()
	Sleep, 12000 ;; SCORES
	PressEnter(1) ;; Dismiss Scores
	Sleep, 4000

	PressEnter(3) ;; Dismiss 
	Sleep, 2000
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
