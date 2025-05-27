Índice Intercalando e Formatando Strings

1. [introduçao](#introdução)
1. [intercalando strings com +](#intercalando-strings-com-)
1. [operador %](#operador-)
1. [str.format](#strformat)
1. [f-string](#f-string)
1. [formatando strings](#formatando-strings)
1. [exercícios](#exercícios)

# Intercalando Strings

## introdução

Quando se está trabalhando com strings, é comum precisar integrar ou inserir valores e objetos nelas, para então criar novas strings dinamicamente. Essa tarefa é conhecida como intercalação de stings.

O Python possiu três ferramentas para realizar essa tarefa :
- O operador `módulo` (`%`);
- O método `str.format()`;
- Literais `f-strings`;

> [!IMPORTANT]
>
> Antes de seguir adiante, é importante saber que há duas formas de intercalação de strings :
> - `Intercalação Ansionsa` : é quando o Python insere os valores dos objetos na strings em tempo de exeucução enquanto a strings está sendo definida;
> - `Intercalação Preguiçosa` : é quando o Python atrasa a inserção dos objetos na strings até o seu uso. Nesse caso, serão criados modelos em um ponto do código e o preenchimento com os valores é feito em outro momento;
>
> Ao explorarmos os métodos adiante, isso será melhor explicado com exemplos para cada caso de uso.

## intercalando strings com +

Como foi visto anteriormente, uma forma de criar uma string é usando o operador `+` para intercalar strings e assim gerar novas strings. É possível usar para salvar em uma nova variável ou então exibir um texto já formatado :

```python
nome = 'Arnold'
sobrenome = 'Schwarzenegger'

print(nome + ' ' + sobrenome)
# saída : Arnold Schwarzenegger
```

Embora essa forma funcione, ela não é muito prática pois torna difícil a leitura do código.

## operador %

Intercalar strings com o operador `%` é uma forma obsoleta, mas ainda funcional para isso. É importante saber que existe pois muitos códigos antigos ainda os usam. Ele pode ser usado tanto para *intercalação ansiosa* quanto para *intercalação preguiçosa*.

Veja exemplos de intercalação ansiosa :

```python
x = 30
y = 12

operador = '+'
print('A operação é %d %s %d = %d.' % (x, operador, y, x + y))
# saída : A operação é 30 + 12 = 42.

operador = '-'
print('A operação é %d %s %d = %d.' % (x, operador, y, x - y))
# saída : A operação é 30 - 12 = 18.

operador = '/'
print('A operação é %d %s %d = %d.' % (x, operador, y, x / y))
# saída : A operação é 30 / 12 = 2.
```

A combinação de caracteres iniciando com o sinal de percentual `%` é conhecida como conversão específica. Nos exemplos acima, foi usado o especificador `%d`, usado quando se quer converter um valor decimal ou inteiro para uma strings. Repare no último exemplo que o valor decimal do resultado foi perdido na conversão.

Uma intercalação preguiçosa pode ser feita como abaixo :

```python
x = 30
y = 12

modelo = 'A operação é %d %s %d = %d.'

operador = '+'
print(modelo % (x, operador, y, x + y))
# saída : A operação é 30 + 12 = 42.

operador = '-'
print(modelo % (x, operador, y, x - y))
# saída : A operação é 30 - 12 = 18.

operador = '/'
print(modelo % (x, operador, y, x / y))
# saída : A operação é 30 / 12 = 2.
```

Essa forma de uso é útil quando se precisa reutilizar o mesmo modelo em mais de um local do código. Outros formatos incluem `%f` para números do tipo `float` e `%s` para strings.

```python
pi = 3.141592
print('o valor de PI é %f' % pi)
# saída : 'o valor de PI é 3.141592'

nome_completo = 'Arnold Schwarzenegger'
print('O nome completo é %s' % nome_completo)
# saída : 'O nome completo é Arnold Schwarzenegger'
```

Por ser um método já muito antigo, datando dos primórdios da criação do Python, ele quase não é mais usando atualmente. Então maiores detalhes não serão abordados. Contudo, a documentação do Python é bem extensa sobre esse recurso. Mais pode ser encontrado [aqui](https://docs.python.org/3/library/stdtypes.html#printf-style-string-formatting).

## str.format()
Se for necessário intercalar valores em uma strings preguiçosamente, então o método `str.format()` é o que precisa. Ele proporciona uma sintaxe legível e permite ambos as intercalação preguiçosa e ansiosa.

Este método permite três abordagens diferentes :

1. Campo de substituição vazio, `{}`;
    ```python
    modelo = """
    Caro {},
    Obrigado pela figurinha do {} que comprou.
    Atencionamente,
    {}
    """

    print(modelo.format('Tom', 'Campeonato Brasileiro', 'Seu amigo'))

    #saída :
    # Caro Tom,
    # Obrigado pela figurinha do Campeonato Brasileiro que comprou.
    # Atencionamente,
    # Seu amigo
    ```
    No exemplo acima, é criado um modelo de mensagem agradecendo pela compra de uma figurinha, podendo ser de qualquer álbum e agradecendo qualquer pessoa. Nesse exemplo, foi usado uma variável para guardar o texto como modelo.

    Veja abaixo um modelo usado na string diretamente.

    ```python
    x = 10
    y = 32
    print('a soma de {} com {} é {}'.format(x, y, x+y))
    # saída : a soma de 10 com 32 é 42
    ```

2. Campo de substituição com índices iniciado em zero, `{0} {n}`;

    ```python
    modelo = 'Disciplina : {0}\nNota : {1}'
    print(modelo.format('Python', 'A'))
    # saída : Disciplina : Python
    # saída : Nota : A
    print(modelo.format('C++', 'C'))
    # saída : Disciplina : C++
    # saída : Nota : C
    print(modelo.format('C', 'Java'))
    # saída : Disciplina : C
    # saída : Nota : Java

    modelo = 'Disciplina : {1}\nNota : {0}'
    print(modelo.format('C', 'Java'))
    # saída : Disciplina : Java
    # saída : Nota : C
    ```
    Como pode ser visto no modelo acima, foi criado um modelo com os campos determinados usando um índice iniciando em 0 e seguido de 1. É possível ver, também, que ao alterar a ordem, os valores são impressos errados. Em seguida, o modelo é alterado para aceitar as novas posições.

    Também é possível usar para criar prefixos, veja abaixo :
    ```python
    prefixo = 're'
    print('{0}criar, {0}iniciar, {0}nascer, {0}abastecer'.format(prefixo))
    # saída : recriar, reiniciar, renascer, reabastecer
    ```

3. Campo de susbtituição com argumentos nomeados, `{arg_1} {arg_n}`;

    Apesar dos métodos anteriores serem práticos, eles não são exatamente muito fáceis de ler. Mesmo quando a string é lida, não é claro o que será substituído. Para contornar esse problema, é possível usar palavras-chave para determinar os campos.

    ```python
    modelo = """
    Caro {cliente},
    Obrigado por comprar o {produto}
    Com carinho
    {vendedor}
    """

    print(modelo.format(
        cliente='Tom',
        produto='Galaxy S90',
        vendedor='Fulano'
    ))

    # saída :
    # Caro Tom,
    # Obrigado por comprar o Galaxy S90
    # Com carinho
    # Fulano
    ```
    Nessa string, é muito mais fácil de indentificar o que cada campo {} vai receber como parâmetro. Isso facilita tanto para a legibilidade quanto para atualizar o código, se necessário.

## f-string

Para a maioria das intercalações de strings, o método usado será a `f-string`. Ela foi adicionada ao Python em sua versão 3.6 e possui uma legibilidade muito melhor e concisa, além de possuir uma performance superior às demais.

Uma situação onde a `f-string` talvez não seja a melhor escolha é quando se faz necessário usar a intercalação preguiçosa. Outra consideração importante é que, como ela é executada de imediato, ela pode expor a aplicação a ataques maliciosos se não for tomado o devido cuidado.

```python
x = 5
y = 37
f'A expressão é {x} + {y} = {x + y}.'
'A expressão é 5 + 37 = 42.'
```

No exemplo acima, há duas variáveis que são somadas dentro do terceiro campo diretamente na `f-string`. Isso permite, inclusive, realizar operações mais complexas dentro das chaves.

```python
pi = 3.14159265
raio = 17
print(f'A área do círculo é {pi * (raio ** 2)}.')
# saída : 'A área do círculo é 907.9202768874502.'

nome = 'Arnold'
sobrenome = 'Schwarzenegger'
print(f'Olá, {nome.upper()}. Seu nome completo é {nome + " " + sobrenome}.')
# saída : 'Olá, ARNOLD. Seu nome completo é Arnold Schwarzenegger.'

print(f'{[2**i for i in range(2, 20, 2)]}.')
# saída : '[4, 16, 64, 256, 1024, 4096, 16384, 65536, 262144].'
```

A `f-string`, assim como a `str.format()` automaticamente convertem os números para strings.

Outro ponto muito interessante da `f-string` é ser possível realizar uma auto documentação. Isso é muito útil quando se quer documentar o que tem uma variável ou então quando se quer mostrar qual variável tem qual valor.

```python
um_texto = 'contenho um texto muito interessante'

print(f'O que é isso : <{um_texto = }>')
# saída : "O que é isso : <um_texto = 'contenho um texto muito interessante'>"

print(f'{2 * 21 = }.')
# saída : '2 * 21 = 42.'
```

## formatando strings

O Python também permite formatar as strings quando for exibir elas.

```python
pi = 3.1415926535

print('o valor de pi é {}'.format(pi))
# saída : o valor de pi é 3.1415926535
print('o valor de pi é {:.2f}'.format(pi))
# saída : o valor de pi é 3.14
print('o valor de pi é {:.4f}'.format(pi))
# saída : o valor de pi é 3.1416

print(f'o valor de pi é {pi:.2f}')
# saída : o valor de pi é 3.14
```
Esse tipo de formatação é válido tanto para `str.format()` quanto para `f-string`.

Também permite especificar o tamanho do campo e o alinhamento :
```python
# alinhando à esquerda
print(f'-{saudacao:<10}-')
# saída : -olá       -

# alinhando à direita
print(f'-{saudacao:>10}-')
# saída : -       olá-

# centralizando
print(f'-{saudacao:^10}-')
# saída : -   olá    -
```

E especificar um preenchimento :
```python
# alinhando à esquerda e preenchendo com _
print(f'-{saudacao:_<20}-')
# saída : -olá_________________-

# alinhando à direita e preenchendo com +
print(f'-{saudacao:+>20}-')
# saída : -+++++++++++++++++olá-

# centralizando e preenchendo com *
print(f'-{saudacao:*^20}-')
# saída : -********olá*********-

# preenchendo com zero a esquerda ou a direita
print(f'-{3.14:0<20}-')
# saída : -3.140000000000000000-
print(f'-{3.14:0>20}-')
# saída : -00000000000000003.14-
```

## exercícios

<details>
<summary>Lista de Exercícios</summary>

1. Intercalação de Strings usando `+`
    1. Crie duas variáveis do tipo `str` e concatene-as usando o operador `+`.
    1. Crie três variáveis do tipo `str` e concatene-as usando o operador `+` para formar uma frase completa.
    1. Crie uma variável `str` que armazene um nome e outra que armazene uma saudação, depois concatene-as para exibir uma mensagem de boas-vindas.
    1. Crie uma variável `str` com o nome de uma pessoa e outra com a cidade onde ela mora. Concatene-as para exibir uma mensagem informando a cidade de residência.
    1. Crie uma variável `str` com o nome de uma fruta e outra com a cor dela. Concatene as strings para formar a frase "A [fruta] é [cor]".
    1. Crie três variáveis `str` que armazenem o primeiro nome, o sobrenome e a idade de uma pessoa. Concatene-as para exibir a frase "Nome: [primeiro nome] [sobrenome], Idade: [idade]".
    1. Crie uma variável `str` com o nome de uma cidade e outra com o nome de um país. Concatene-as para formar a frase "Cidade: [cidade], País: [país]".
    1. Crie duas variáveis `str` contendo uma saudação e um nome. Concatene as strings para exibir "Olá, [nome]!".
    1. Crie uma variável `str` com o nome de uma pessoa e outra com a profissão dela. Concatene-as para formar a frase "A [nome] é [profissão]".
    1. Crie uma variável `str` com o nome de um produto e outra com o preço dele. Concatene as strings para exibir "Produto: [produto], Preço: [preço]".
1. Intercalação de Strings usando o Operador `%`
    1. Crie uma variável `str` que armazene um nome e exiba "Meu nome é %s" usando o operador `%`.
    1. Crie uma variável `int` com a idade de uma pessoa e exiba "Eu tenho %d anos" usando o operador `%`.
    1. Crie uma variável `str` com o nome de uma fruta e outra com a cor dela. Exiba "A %s é %s" usando o operador `%`.
    1. Crie uma variável `float` com a altura de uma pessoa e exiba "Minha altura é %.2f metros" usando o operador `%`.
    1. Crie duas variáveis `str`, uma com o nome de um filme e outra com o diretor. Exiba "O filme %s foi dirigido por %s" usando o operador `%`.
    1. Crie uma variável `float` com o valor de um produto e exiba "O preço do produto é R$ %.2f" usando o operador `%`.
    1. Crie uma variável `str` com o nome de uma pessoa e outra com a profissão dela. Exiba "A %s é uma excelente %s" usando o operador `%`.
    1. Crie duas variáveis `str`, uma com o nome de uma cidade e outra com o nome de um país. Exiba "A cidade de %s está localizada em %s" usando o operador `%`.
    1. Crie uma variável `int` com a idade de uma pessoa e outra com a quantidade de anos de experiência dela. Exiba "Tenho %d anos e %d anos de experiência" usando o operador `%`.
    1. Crie uma variável `float` com o valor de um desconto e exiba "O desconto é de %.1f%%" usando o operador `%`.
1. Intercalação de Strings usando o Método `str.format()`
    1. Crie uma variável `str` que armazene um nome e exiba "Meu nome é {}" usando o método `str.format()`.
    1. Crie uma variável `int` com a idade de uma pessoa e exiba "Eu tenho {} anos" usando o método `str.format()`.
    1. Crie uma variável `str` com o nome de uma fruta e outra com a cor dela. Exiba "A {} é {}" usando o método `str.format()`.
    1. Crie uma variável `float` com a altura de uma pessoa e exiba "Minha altura é {:.2f} metros" usando o método `str.format()`.
    1. Crie duas variáveis `str`, uma com o nome de um filme e outra com o diretor. Exiba "O filme {} foi dirigido por {}" usando o método `str.format()`.
    1. Crie uma variável `float` com o valor de um produto e exiba "O preço do produto é R$ {:.2f}" usando o método `str.format()`.
    1. Crie uma variável `str` com o nome de uma pessoa e outra com a profissão dela. Exiba "A {} é uma excelente {}" usando o método `str.format()`.
    1. Crie duas variáveis `str`, uma com o nome de uma cidade e outra com o nome de um país. Exiba "A cidade de {} está localizada em {}" usando o método `str.format()`.
    1. Crie uma variável `int` com a idade de uma pessoa e outra com a quantidade de anos de experiência dela. Exiba "Tenho {} anos e {} anos de experiência" usando o método `str.format()`.
    1. Crie uma variável `float` com o valor de um desconto e exiba "O desconto é de {:.1f}%" usando o método `str.format()`.
1. Intercalação de Strings usando `f-strings`
    1. Crie uma variável `str` que armazene um nome e exiba "Meu nome é {nome}" usando uma `f-string`.
    1. Crie uma variável `int` com a idade de uma pessoa e exiba "Eu tenho {idade} anos" usando uma `f-string`.
    1. Crie uma variável `str` com o nome de uma fruta e outra com a cor dela. Exiba "A {fruta} é {cor}" usando uma `f-string`.
    1. Crie uma variável `float` com a altura de uma pessoa e exiba "Minha altura é {altura:.2f} metros" usando uma `f-string`.
    1. Crie duas variáveis `str`, uma com o nome de um filme e outra com o diretor. Exiba "O filme {filme} foi dirigido por {diretor}" usando uma `f-string`.
    1. Crie uma variável `float` com o valor de um produto e exiba "O preço do produto é R$ {preco:.2f}" usando uma `f-string`.
    1. Crie uma variável `str` com o nome de uma pessoa e outra com a profissão dela. Exiba "A {nome} é uma excelente {profissao}" usando uma `f-string`.
    1. Crie duas variáveis `str`, uma com o nome de uma cidade e outra com o nome de um país. Exiba "A cidade de {cidade} está localizada em {pais}" usando uma `f-string`.
    1. Crie uma variável `int` com a idade de uma pessoa e outra com a quantidade de anos de experiência dela. Exiba "Tenho {idade} anos e {experiencia} anos de experiência" usando uma `f-string`.
    1. Crie uma variável `float` com o valor de um desconto e exiba "O desconto é de {desconto:.1f}%" usando uma `f-string`.
1. Exercícios de Alinhamento de Strings
	1. Crie uma variável `str` com seu nome e exiba-a alinhada à esquerda em um campo de 20 caracteres.
	1. Crie uma variável `str` com o nome de uma cidade e exiba-a alinhada à direita em um campo de 30 caracteres.
	1. Crie uma variável `str` com o nome de um filme e exiba-a centralizada em um campo de 25 caracteres.
	1. Crie uma variável `str` com o nome de uma fruta e exiba-a alinhada à esquerda em um campo de 15 caracteres.
	1. Crie uma variável `str` com o título de um livro e exiba-o alinhado à direita em um campo de 40 caracteres.
	1. Crie uma variável `str` com o nome de uma banda e exiba-a centralizada em um campo de 30 caracteres.
	1. Crie uma variável `str` com o nome de uma cor e exiba-a alinhada à esquerda em um campo de 10 caracteres.
	1. Crie uma variável `str` com o nome de uma estação do ano e exiba-a alinhada à direita em um campo de 25 caracteres.
	1. Crie uma variável `str` com o nome de um país e exiba-o centralizado em um campo de 20 caracteres.
	1. Crie uma variável `str` com o nome de uma linguagem de programação e exiba-a alinhada à direita em um campo de 50 caracteres.
1. Exercícios de Preenchimento de Strings
    1. Crie uma variável `str` com seu nome e exiba-a preenchida com `*` à esquerda até completar 20 caracteres.
    1. Crie uma variável `str` com o nome de uma cidade e exiba-a preenchida com `-` à direita até completar 30 caracteres.
    1. Crie uma variável `str` com o nome de um filme e exiba-a preenchida com `.` centralizada em um campo de 25 caracteres.
    1. Crie uma variável `str` com o nome de uma fruta e exiba-a preenchida com `#` à esquerda até completar 15 caracteres.
    1. Crie uma variável `str` com o título de um livro e exiba-o preenchido com `~` à direita até completar 40 caracteres.
    1. Crie uma variável `str` com o nome de uma banda e exiba-a preenchida com `=` centralizada em um campo de 30 caracteres.
    1. Crie uma variável `str` com o nome de uma cor e exiba-a preenchida com `+` à esquerda até completar 10 caracteres.
    1. Crie uma variável `str` com o nome de uma estação do ano e exiba-a preenchida com `.` à direita até completar 25 caracteres.
    1. Crie uma variável `str` com o nome de um país e exiba-o preenchido com `*` centralizado em um campo de 20 caracteres.
    1. Crie uma variável `str` com o nome de uma linguagem de programação e exiba-a preenchida com `-` à direita até completar 50 caracteres.

</details>
