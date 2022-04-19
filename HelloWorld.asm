; Write out the word to OS
; Uses trap to interface with OS
   lea R1,2[R0]                ; trap code for write operation
   lea R2,string[R0]           ; R2 := &animal (address of animal)
   load R3,k[R0]               ; R3 := k (length of string)
   trap R1,R2,R3               ; write out starting at address R2 for length R3
   trap R0,R0,R0.              ; terminate






; Data Definitions
k data 13                       ; k is length + 1 to include newline char
; string = string("cat")
string
   data 72                     ; char code for "H"
   data 101                    ; char code for "e"
   data 108                    ; char code for "l"
   data 108                    ; char code for "l"
   data 111                    ; char code for "o"

   data 32                     ; char code for " "

   data 87                     ; char code for "W"
   data 111                    ; char code for "o"
   data 114                    ; char code for "r"
   data 108                    ; char code for "l"
   data 100                    ; char code for "d"
   data 33                     ; char code for "!"
   data 10                     ; char code for newline
