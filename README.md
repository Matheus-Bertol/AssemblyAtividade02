# Programa em Assembly para Exibir uma Mensagem

## Explicação do Código

### Definição do Modelo
`.MODEL small` - Define o modelo de memória small.

### Alocação de Pilha
`.STACK 64` - Aloca um espaço de 64 bytes para a pilha.

### Seção de Dados
`.DATA` - Início da seção de dados.

`message db 'Soldador', '$'` - Define a mensagem e termina com o caractere '$'.

### Seção de Código
`.CODE` - Início da seção de código.

### Início do Procedimento Principal
`main proc` - Define o início do procedimento principal.

### Configuração do Registrador de Segmento
`mov ax, @data` - Carrega o endereço do segmento de dados em AX.

`mov ds, ax` - Transfere o conteúdo de AX para o registrador DS.

### Preparação para Função do DOS
`mov ah, 9h` - Prepara o registrador AH para a função 09h do DOS (exibir string).

`mov dx, offset message` - Armazena o deslocamento da mensagem em DX.

### Chamada de Interrupção do DOS
`int 21h` - Executa a interrupção do DOS para exibir a string.

### Fim do Procedimento Principal
`main endp` - Marca o fim do procedimento principal.

### Fim do Programa
`end main` - Indica o fim do programa.

![image](https://github.com/Matheus-Bertol/AssemblyAtividade02/assets/141282448/89da1a55-217f-4d21-ad30-71a1d18c1f6f)
