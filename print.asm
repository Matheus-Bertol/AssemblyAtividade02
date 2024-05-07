.MODEL small ;Define o modelo de memória small
.STACK 64 ;Aloca um espaço de 64 bytes p/ a pilha

.DATA ; inicio da seção de dados
message db 'Soldador', '$'; Define a mensagem e termina com $ 


.CODE ; Inicio da seção de código
main proc ; Define o inicio do procedimento principal

mov ax, @data ; Carrega o endereço do segmento em AX 
mov ds, ax ; move o valor em ax para o registrador ds 

mov ah, 9h ;Preparar o registrador AH para a função 09h do DOS
mov dx, offset message; fazer o deslocamento da msg em DX

int 21h ; Instrução de interrupção

main endp ; marca o fim de um procedimento
end main ; indica o fim