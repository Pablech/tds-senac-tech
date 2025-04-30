# Bibliotecas

Em qualquer algoritmo que se deseje elaborar, é possível utilizar um conjunto de funções e comandos já existentes. Esses conjuntos são chamados de **bibliotecas**.

As bibliotecas contêm códigos e dados auxiliares que oferecem serviços a programas de forma independente. Isso permite o **reaproveitamento de código**, além de facilitar a organização do programa de forma **modular**. Existem diversos tipos de bibliotecas, cada uma projetada para resolver um tipo específico de problema, como manipulação de arquivos, operações gráficas, cálculos matemáticos, entrada de dados, entre outros.

## Como importar uma biblioteca

Para utilizar uma biblioteca no Portugol, é necessário **importá-la** no início do programa, antes da função `inicio` e depois da abertura de chaves do `programa`. A sintaxe utiliza as palavras reservadas `inclua biblioteca` seguidas do **nome da biblioteca**. Opcionalmente, é possível atribuir um **apelido (alias)** à biblioteca usando o operador `-->`.

### Sintaxe

```portugol
inclua biblioteca NomeDaBiblioteca
inclua biblioteca NomeDaBiblioteca --> apelido
```

## Bibliotecas disponíveis no Portugol

- `Arquivos`
- `Graficos`
- `Matematica`
- `Mouse`
- `Sons`
- `Teclado`
- `Texto`
- `Tipos`
- [`Util`](#biblioteca-util)

Cada uma dessas bibliotecas oferece um conjunto de funções relacionadas ao seu domínio. Veja abaixo um exemplo mais completo:

### Exemplo completo com `Matematica` e `Texto`

```portugol
programa
{
    inclua biblioteca Matematica
    inclua biblioteca Texto --> t
    funcao inicio()
    {
        real resultado
        resultado = Matematica.arredondar(Matematica.PI, 5)
        escreva("Valor de PI arredondado: ", resultado, "\n")
        escreva(t.caixa_alta("texto em maiúsculas"))
    }
}
```

---

## Biblioteca `Util`

A biblioteca `Util` oferece funções gerais e auxiliares. Um dos destaques dessa biblioteca é a função `sorteia`.

### Função: `sorteia`

```portugol
funcao inteiro sorteia(inteiro minimo, inteiro maximo)
```

**Descrição**:
Sorteia e retorna um número aleatório entre os valores `minimo` e `maximo`, inclusive.

**Parâmetros**:
- `minimo`: o menor número que pode ser sorteado;
- `maximo`: o maior número que pode ser sorteado.

**Retorno**:
Um número inteiro dentro do intervalo especificado.

### Exemplo de uso

```portugol
programa
{
    inclua biblioteca Util
    funcao inicio()
    {
        inteiro numero_aleatorio
        numero_aleatorio = Util.sorteia(1, 10)
        escreva("Número sorteado: ", numero_aleatorio)
    }
}
```
