TITLE ASM1 (EXE)
;---------------------------------------------
STACKSEG SEGMENT PARA 'Stack'
  DW 32 DUP ('E')
STACKSEG ENDS
;---------------------------------------------
DATASEG SEGMENT PARA 'Data'
  MESSAGE DB "HELLO WORLD!!!$"
DATASEG ENDS
;---------------------------------------------
CODESEG SEGMENT PARA 'Code'
  ASSUME SS:STACKSEG, DS:DATASEG, CS:CODESEG
START:
  MOV AX, DATASEG
  MOV DS, AX
  LEA DX, MESSAGE
  MOV AH, 9
  INT 21H
  MOV AH, 4CH
  INT 21H
CODESEG ENDS
END START
