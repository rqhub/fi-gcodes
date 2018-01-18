
; ;;;;;;;;;;;;;;;;;;;;;;;;;;
; Cutting Script
; RKL 2018-01-18
; 
; Intended for the gate trimmer
;
;

; Keep this -> 1 unit = 10 degrees
M92 E88.88888889
M205 E500

; Too slow = too much heat
; Too fast = bad surface finish
G1 F50			; Optimal speed


; This script is in relative mode
G91 			; Relative mode 


; Offset on Y (keep this line even if 0)
G1 Y0

; Give the user 5 seconds to turn on
; ** the spindle
; ** the vacuum / dust extraction
; G4 S5

; Expected offset to touchdown ~1 or 2 mm on X
G1 X20 E-2000

; goto safe X position while continuing to spin (avoid marks)
G1 F1000
G1 X-20 E-40
G1 X-25
G92 E0

; Bring them back home
G90 ; Absolute

; fast back
G1 X5 F1500
G1 Y5 F1500
; home
G28 Y0
G28 X0

