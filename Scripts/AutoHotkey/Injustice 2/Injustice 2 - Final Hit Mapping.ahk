#Include Injustice 2 - Functions.ahk
#Include Injustice 2 - Fighter Mapping.ahk

#Persistent
EventReplay()
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Fighters perform specific combos or moves
;; Most of them are better vs. Level 5s/10s (Easy)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

BounceAttacks(a1 := 1, t1 := 1500, a2 := 0, t2 := 1000) {
	Loop, %a1% {
		PressKeys("A","K")
		Sleep, t1
	}
	Loop, %a2% {
		PressKeys("D","K")
		Sleep, t2
	}
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Arrow_BoxingGlove(t := 1000) {
	Send {L down}
	Sleep, t
	MeterBurn(1)
	Send {L up}
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Atrocitus_HatePounce(t := 1500) {
	;;CharacterPower()
	Sleep, t
	PressKeys("S", "L")
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

BlackAdam_RiddleOfTheSphinx(t := 1500) {
	PressKeys("D","J")
	HitSequence("I","Space")
	Sleep, t
	
	if (t > 0) {
		PressKeys("A","J")
		HitSequence("I","Space")
		Sleep, t
	}
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

BlackManta_MantaRays(t := 1500) {
	DepleteEnergyLevel30()
	
	Loop, 3 {
		Sleep, t
		HitSequence("A","D","J")
		MeterBurn()
		Dash()
	}
}

BlackManta_SharkAttack(t := 1500) {
	DepleteEnergyLevel30()
	
	Loop, 3 {
		Sleep, t
		HitSequence("A","D","I")
		MeterBurn()
		Dash()
	}
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Cyborg_TechnoTackle(t := 2500) {
	BounceAttacks(0,0,1,400)
	BounceAttacks(1,800)
	
	Dash()
	Loop, 2 {
		HitSequence("S","A","D","K")
		Sleep, 500
		MeterBurn()
	}
	Sleep, t	
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Firestorm_MoltenTrap(t := 1500) {
	;; vs. Level 5
	BounceAttacks(2, 1400)
	Sleep, 900
	Uppercut()
	Sleep, 600
	
	HitSequence("A","S","I","A")
	MeterBurn()
	Sleep, t
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Grodd_CruelIntentions(t := 1500) {
	HitSequence("I","I","Space")
	Sleep, t
}

Grodd_MindControl() {
	DepleteEnergyLevel30()	
	
	Sleep, 1400
	CharacterPower()
	
	Loop, 6 {
		HitSequence("S","A","I")
		Sleep, 1000
		Dash()
	}
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Harley_GoNightNight(t := 1500) {
	;; vs. Easy Level 10
	BounceAttacks(2, 1400)	
	Dash()
	Sleep, 600
	
	PressKey("I", 1, 50)
	PressKeys("D","K")
	PressSpace()
	Sleep, t
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Hellboy_FistOfDoom(t := 1500) {
	;; vs. Easy Level 5
	PressKey("K")
	Sleep, 1000
	
	HitSequence("S","D","K")
	MeterBurn(15)
	Sleep, t
}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Joker_CrazedRun(t := 5000) {
	BounceAttacks(1, 1500)
	BounceAttacks(0, 0, 1, 900)
	Uppercut()
	Sleep, 1600
	
	HitSequence("A","D","K")
	Sleep, 500
	MeterBurn()
	Sleep, t
}

Joker_JoyBuzzer() {
	BounceAttacks(1, 1500)
	BounceAttacks(0, 0, 1, 900)
	Uppercut()
	Sleep, 1600

	Loop, 10 {
		Random, buzz, 1000, 1200
		HitSequence("S","A","I")
		Sleep, %buzz%
	}
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Starfire_BurningDesire(meter := true, t := 1000) {
	HitSequence("S","A","I")
	if (meter)
		MeterBurn()
	Sleep, t
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

SubZero_Slide(meter := true, t := 1500) {
	HitSequence("A","D","K")
	if (meter)
		MeterBurn()
	Sleep, t
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

TMNTLeo_Shredded() {
	BounceAttacks(1, 900)
	HitSequence("A","D","I")
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

TMNT_Mike_HotNunchuk() {
	DepleteEnergyLevel30()
	Sleep, 1200
	
	Loop, 3 {
		HitSequence("A","D","I")
		Sleep, 2000
	}
}

TMNT_Mike_Kickflip() {
	DepleteEnergyLevel30()
	Sleep, 1500
	
	Loop, 3 {
		CharacterPower()
		PressKey("J")
		Sleep, 3000
	}
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

TMNT_Ralph_Hype() {
	Loop, 5 {
		BounceAttacks(1, 700)
		HitSequence("S","D","I")
		MeterBurn()
		Sleep, 500
		
		HitSequence("S","A","I")
		MeterBurn()
		Sleep, 500
	}
	PressKey("L")
	Sleep, 1000
	PressKey("L")
	Sleep, 6000
}

TMNT_Ralph_Parry() {
	DepleteEnergyLevel30()
	DepleteEnergyLevel30()
	
	Loop, 25 {
		HitSequence("S","A","I")
		Random, rnd, 800, 1200
		Sleep, %rnd%
	}
	
	Sleep, 2000
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DepleteEnergyLevel30() {
	;; In Very Easy (Novice Tower)
	
	;;BounceAttacks(1,1700)
	;;BounceAttacks(0,0,1,1000)
	;;Dash()
	
	BounceAttacks(1,1700)
	BounceAttacks(0,0,1,700)
	Uppercut()
	
	;;Sleep, 3000
	;;Dash()
	;;PressKey("J")
}
