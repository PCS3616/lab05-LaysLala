        LD  N        ; Carrega N
        JZ  FIM      
        SC  FATORIAL      
        SC  SAIDA    
        HM          

FIM     JP  /000     

FATORIAL     LD  N        
        MM  AUX     
        LD  N        
        SB  UM       
        MM  N        
        JZ  BASE     
        LD  AUX     
        ML  N        
        MM  AUX    
        JP  FATORIAL 

BASE    LD  AUX     
        MM  RESULTADO      
        RS  FATORIAL      

SAIDA   JP  /000     

@ /0100
N            K  /0005    
RESULTAO     K  /0000   
UM           K  /0001   
AUX          K  /0000    
