LD N
JZ /032
SC /040
SC /010
HM /060

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

JZ /032
RS /040
LD /106
MM RES
RS /010

@ /0100
N       K  /0005    ; Valor de entrada para calcular fatorial (N = 5)
RES     K  /0000    ; Armazena o resultado do fatorial
UM      K  /0001    ; Constante 1 para decremento
TEMP    K  /0000    ; Variável temporária
