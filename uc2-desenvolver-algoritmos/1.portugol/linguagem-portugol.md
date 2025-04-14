# Linguagem Portugol

Uma linguagem de programação é um método padronizado para comunicar *instruções* para um computador. É um conjunto de *regras sintáticas e semânticas* usadas para definir um programa de computador. Permite que um programador especifique precisamente sobre quais dados um computador vai atuar, como estes dados serão armazenados ou transmitidos e quais ações devem ser tomadas sob várias circunstâncias.

O **Portugol** é uma representação que se assemelha bastante com a linguagem C, porém é escrito em português. A ideia é facilitar a construção e a leitura dos algoritmos usando uma linguagem mais fácil aos alunos.

---

## sintaxe e semântica do portugol

O compilador auxilia a verificar se a sintaxe e a semântica de um programa está correta. Ele é usado tanto pelo [Portugol Studio](https://univali-lite.github.io/Portugol-Studio/) quanto pelo [Portugol Webstudio](https://portugol.dev/).

---

## estrutura básica

```portugol
// o comando "programa" é obrigatório
programa
{
    // Inclusões de bibliotecas
    // - quando houver a necessidade de utilizar
    //   uma ou mais bibliotecas, as inclusões
    //   devem aparecer antes de qualquer declaração.

    /*
     *  Dentro do programa é permitido declarar
     *  variáveis globais, constantes globais e
     *  funções em qualquer ordem.
     */

    // declarações de funções somente
    // são permitidas dentro do programa
    funcao inicio()
    {
        /*
         * Declarações de variáveis locais,
         * constantes locais, estruturas de
         * controle e expressões.
         */
    }
}
```
