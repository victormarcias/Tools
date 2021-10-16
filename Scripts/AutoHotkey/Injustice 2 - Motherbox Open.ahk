#Include Injustice 2 - Functions.ahk

OpenMotherboxes()

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

OpenMotherboxes() {
	FocusWindow()

	;; Open One Box first and then
	
	Loop, 50 { ;; x = Number of Boxes
		PressKey("A")
		Sleep, 1100
	}
	
	Return
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
