@ /0000
SC /00E ; Chamar a subrotina
HM /09A ; Parou

@ /000E ; endereço de referencia
K /0000 
LD /08E ; Chama a constante 2 para a multiplicação
ML /08A ; multiplica pelo "i"
AD /090 ; forma o termo (2*i + 1)
AD /092 ; soma as parcelas subsequentes do somatório
MM /092 ; armazena o resultado e os resultados parciais
LD /08C ; chama o "n" para decrescimento posterior no somatório
SB /090 ; decresce o somatório
MM /08C ; armazena o "limite" temporário do somatório
JZ /050 ; se for "zero" sai do loop
LD /08A ; chama o "i"
AD /090 ; acrescenta para formar a próxima parcela 2*i
MM /08A ; atualiza o "i"
JP /010 ; volta ao "loop"

@ /0050
LD /092 ; chama o resultado
ATUALIZADOR MM /102 ; meu ponteiro
LD ATUALIZADOR
AD /08E ; incrementa a memoria de dois em dois
MM ATUALIZADOR
LD /098 ; load para não dar merda
MM /092 ; setado em zero novamente
MM /08A ; setar i no zero para não dar merda
LD /094 ; auxiliar dos "n's"
AD /090 ; incrementa o auxiliar
MM /094
MM /08C
SB /096 ; vai contar até o 63 e daí parar
JZ /070
JP /010

@ /0070
RS /00E

@ /008A
K /0000 ; "i" do somatorio
K /0001 ; meu "n"
K /0002 ; constante para a multiplicação 
K /0001 ; constante para acréscimo ou decréscimo
K /0000 ; auxiliar de resultado
K /0001 ; auxiliar do auxiliar do "n"
K /003F ; constante de parada
K /0000 ; constante zero para não dar merda

@ /0100
K /0000




