; ---------------------------
; Initialisation Script
; RKL 2018-01-18
; ---------------------------
;
; Gate trimming
; Initialisation script
;
; !!!!!!!!!!!!!!!!!! WARNING !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
; Each time the arbor is replaced, the Y position needs to be recalibrated
; !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
;

G21 ; unit mm
G90 ; absolute mode
;

G1 F2000 		; set the speed. Limited by the drivers power & stepper limitations

; Homing the axes 
G28 X0 			; Home X First - !!!IMPORTANT!!!
G28 Y0 			; THEN home Y 

; security in case fw is reflashed and ill configured
G92 X0 Y0 		

; Making things faster. Disable if it causes issues
G1 X80 Y75

; Go slow now
G1 F600


; Position the X axis on the EXPECTED edge position, MINUS 2 mm (no collision)
;G1 X112			
G1 X126


; Position the Y axis on the EXPECTED edge position
; WARNING > THIS VALUE NEEDS TO BE UPDATED ON ARBOR OR DISK CHANGE
G1 Y70.4

; Initialisation is complete
; Calibrate manually the edge
; Go back 1 or 2mm (get some clearance)
; Run the TRIM script



