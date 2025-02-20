@ /0000
SC /010 ; subrotina de leitura dos dois primeiros dígitos
SC /020 ; subrotina de leitura dos espaços
SC /030 ; subrotina de leitura dos dois últimos dígitos
SC /040 ; subrotina de operação de soma
HM /06A ; Parou

@ /0010
K /0000
GD /000 ; ler do teclado
SB /092 ; conforme o algoritmo do enunciado
MM /094 ; armazenar os dois primeiros dígitos
RS /010 ; fim da subrotina

@ /0020
K /0000
GD /000
MM /096 ; armazena os espaços
RS /020

@ /0030
K /0000
GD /000
SB /092
MM /098 ; armazena os dois últimos dígitos
RS /030 ; fim da subrotina

@ /0040
K /0000
LD /094
AD /098
MM /09E
SB /09A
JN /060 ; se for negativo vai sair para receber outro tratamento
AD /09C 
AD /092
PD /100
RS /040

@ /0060
LD /09E
AD /092
PD /100
RS /040

@ /0092
K /3030 ; constante de operação do enunciado
K /0000 ; armazena os dois primeiros dígitos
K /0000 ; armazena os dois espaços
K /0000 ; armazena os dois últimos dígitos
K /000A ; constante 
K /0100 ; constante
K /0000 ; soma em hex ou não
