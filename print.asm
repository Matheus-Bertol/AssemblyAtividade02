.MODEL small             ; Define o modelo de memória small.
.STACK 64                ; Aloca um espaço de 64 bytes para a pilha.

.DATA                    ; Início da seção de dados.
message db 'Soldador', '$' ; Define a mensagem e termina com o caractere '$'.

.CODE                    ; Início da seção de código.
main proc                ; Define o início do procedimento principal.

mov ax, @data            ; Carrega o endereço do segmento de dados em AX.
mov ds, ax               ; Move o valor em AX para o registrador DS.

mov ah, 9h               ; Prepara o registrador AH para a função 09h do DOS (exibir string).
mov dx, offset message   ; Armazena o deslocamento da mensagem em DX.

int 21h                  ; Realiza a interrupção do DOS para exibir a string.

main endp                ; Marca o fim do procedimento principal.
end main                 ; Indica o fim do programa.
