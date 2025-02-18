
@ /0000 ; Especificar que começa no zero o endereço
LD /100 ; carregar N
JZ /032 ; Pular para 0032 se for zero
SC /040 ; subrotina para checar se é 1

@ /0006 ; Especificar o endereço para a instrução
SC /010 ; Subrotina para fatorial com N diferente de 1 e zero
HM /060 ; Parou a máquina

@ /0010 ; Especificando endereço
JP /000
LD /100
MM /106
LD /100
SB /104
MM /100
JZ /050
LD /106
ML /100
MM /106
JP /016

@ /0032
LD /104
MM /102
HM /016

@ /0040
JP /000
LD /100
MM /108
LD /108
SB /104

@ /0046
JZ /032
RS /040
LD /106
MM /102
RS /010

@ /0100
K /0005
K /0000
K /0001
K /0000
K /0000