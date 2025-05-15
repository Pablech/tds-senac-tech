Índice

1. [tipos primitivos](#tipos-primitvos)
1. [variáveis](#variáveis)
1. [int](#int)
1. [float](#float)
1. [combinando int e float](#combinando-int-e-float)
1. [str](#str)
1. [bool](#bool)
1. [exercícios](#exercícios)

# tipos primitivos

O Python possui 4 tipos primitivos básicos, são eles :
* **int** : representa os números inteiros negativos, zero e positivos;
* **float** : representa os números de ponto flutuante negativos, zero e positivos;
* **string** : representa tudo que é texto entre as simples e duplas;
* **boolean** : representa o verdadeiro e falso, das comparações;

## variáveis

Variáveis são usadas para armazenar valores dos tipos de Python. É uma boa prática usar nomes de variáveis que façam sentido com seu uso.

Por exemplo :
```python
# números inteiros (int)
idade = 25
anos_de_experiencia = 3
quantidade_de_alunos = 30
numero_de_livros = 10
pontuacao = 85
dias_no_ano = 365
numero_de_irmaos = 2
quantidade_de_copos = 6
anos_de_estudo = 15
numero_do_andar = 4

# números de ponto flutuante (float)
preco = 19.99
altura = 1.75
peso = 68.5
distancia = 12.34
nota_final = 8.7
temperatura = 22.0
salario = 3500.75
media_dos_alunos = 7.4
taxa_de_crescimento = 1.03
velocidade_media = 60.5

# strings (str)
nome = ´João´
cidade = "São Paulo"
pais = "Brasil"
curso = ´Engenharia´
profissao = "médico"
nome_da_empresa = "Oscorp"
modelo_do_carro = "Civic"
marca_do_celular = "Samsung"
cor_favorita = "azul"
time_do_coracao = "Grêmio"

# booleanos (bool)
esta_chovendo = True
tem_aula_hoje = False
janela_aberta = True
luz_acesa = False
internet_funcionando = True
tarefa_completa = False
estudando_python = True
ferias_chegando = False
fim_de_semana = True
trabalho_entregue = False

# constantes
NUMERO_MAXIMO_DE_TENTATIVAS = 5  # int
NOME_DO_PROJETO = "Desenvolvimento de Software"  # str
VELOCIDADE_DA_LUZ = 299792458  # int
NOME_DA_EMPRESA = "Senac Tech"  # str
PI = 3.14159  # float
NUMERO_JOGADORES_CAMPO = 11  # int
COR_DO_INTERNACIONAL = 'vermelho'  # str
HA_VIDA_TERRA = True  # bool
```

Repare que as variáveis acima não possuem qualquer acentuação nos seus nomes (diferente dos textos que possuem), as palavras diferentes são ligadas por um sublinhado e seus nomes fazem referência ao seu conteúdo, para facilitar a leitura e identificação no código.

As variáveis são reconhecidas por terem todas as letras minúsculas (caixa baixa) enquanto que as constantes são reconhecidas por terem seus nomes em letras maiúsculas (caixa alta).

As variáveis tem por característica terem seus valores **ALTERADOS** (podem ou não) durante a execução do programa, enquanto que as constantes tem por característica terem valores **NÃO ALTERÁVEIS** (que não deveriam) durante a execução do programa.

## precedência dos operadores

Há uma precedência fixa entre todos os operadores usados.

Veja a tabela abaixo :

| prioridade | operador símbolo | operador nome | tipo operador |
| :----: | :----: | :----: | :----: |
| 1 | `()` | parênteses | operadores aritméticos |
| 2 | `**` | potência | operadores aritméticos |
| 3 | `*`<br>`/`<br>`//`<br>`%` | multiplicaçao<br>divisão<br>divisão inteira<br>módulo | operadores aritméticos |
| 4 | `+`<br>`-` | soma<br>subtração | operadores aritméticos |
| 5 | `==`<br>`>`<br>`<`<br>`>=`<br>`<=`<br>`!=` | igual a<br>maior que<br>menor que<br>maior ou igual a<br>menor ou igual a<br>diferente de | operadores relacionais |
| 6 | `not` | negação | operadores lógicos |
| 7 | `and` | conjunção | operadores lógicos |
| 8 | `or` | disjunção | operadores lógicos |

## int

O tipo inteiro, com abreviação de `int`, são usados para representar os números negativos (-10, -42, -1), o zero (0) e lembrando que não é usado a representação de -0 e os números positivos (1, 30, 42).

Veja abaixo as operações realizadas com os números inteiros :

```python
# adição de dois inteiros:
a = 5
b = 3
resultado = a + b
print(resultado)  # saída : 8

# subtração de dois inteiros:
x = 10
y = 4
diferenca = x - y
print(diferenca)  # saída : 6

# multiplicação de dois inteiros:
largura = 7
altura = 5
area = largura * altura
print(area)  # saída : 35

# divisão de dois inteiros (divisão inteira):
total = 20
partes = 4
divisao = total // partes
print(divisao)  # saída : 5

# resto da divisão de dois inteiros (módulo):
numero = 17
divisor = 3
resto = numero % divisor
print(resto)  # saída : 2

# potenciação:
base = 2
expoente = 3
potencia = base ** expoente
print(potencia)  # saída : 8

# uso de parênteses para alterar a precedência:
resultado = (5 + 3) * 2
print(resultado)  # saída : 16

# comparação de igualdade:
idade_joao = 18
idade_maria = 18
mesma_idade = idade_joao == idade_maria
print(mesma_idade)  # saída : True

# comparação de diferença:
nota1 = 7
nota2 = 8
notas_diferentes = nota1 != nota2
print(notas_diferentes)  # saída : True

# comparação maior que:
saldo_banco = 1500
saldo_minimo = 1000
acima_do_minimo = saldo_banco > saldo_minimo
print(acima_do_minimo)  # saída : True

# comparação menor que:
velocidade_carro = 80
velocidade_limite = 90
abaixo_limite = velocidade_carro < velocidade_limite
print(abaixo_limite)  # saída : True

# comparação maior ou igual a:
temperatura = 30
temperatura_minima = 30
dentro_do_padrao = temperatura >= temperatura_minima
print(dentro_do_padrao)  # saída : True

# comparação menor ou igual a:
pessoas_na_fila = 10
capacidade_maxima = 15
pode_entrar = pessoas_na_fila <= capacidade_maxima
print(pode_entrar)  # saída : True

# uso de constante:
PI = 3.14
raio = 5
circunferencia = 2 * PI * raio
print(circunferencia)  # saída : 31.400000000000002

# soma com variável e constante:
INCREMENTO = 10
valor = 25
novo_valor = valor + INCREMENTO
print(novo_valor)  # saída : 35

# subtração com variável e constante:
DESCONTO = 5
preco_original = 50
preco_com_desconto = preco_original - DESCONTO
print(preco_com_desconto)  # saída : 45

# expressão complexa com várias operações:
resultado = (4 + 5) * 2 - (3 ** 2) // 2
print(resultado)  # saída : 11

# divisão com resultado decimal:
a = 10
b = 4
divisao_decimal = a / b
print(divisao_decimal)  # saída : 2.5

# uso de variável para armazenar resultado de uma expressão:
numero1 = 15
numero2 = 5
resultado_expressao = (numero1 * 2 + numero2) / 3
print(resultado_expressao)  # saída : 11.666666666666666
```

## float

O tipo ponto flutuante, com abreviação de `float`, são usados para representar os números negativos (-10.9, -42.0, -1.000001), o zero (0.0) e lembrando que não é usado a representação de -0.0 e os números positivos (1.00000000002, 30.123, 42.0).

Veja abaixo as operações realizadas com os números de ponto flutuante :

```python
# adição de dois floats:
a = 5.2
b = 3.1
resultado = a + b
print(resultado)  # saída : 8.3

# subtração de dois floats:
x = 10.5
y = 4.2
diferenca = x - y
print(diferenca)  # saída : 6.3

# multiplicação de dois floats:
largura = 7.5
altura = 5.2
area = largura * altura
print(area)  # saída : 39.0

# divisão de dois floats:
total = 20.0
partes = 4.0
divisao = total / partes
print(divisao)  # saída : 5.0

# resto da divisão de dois floats (módulo):
numero = 17.5
divisor = 3.2
resto = numero % divisor
print(resto)  # saída : 1.8999999999999986

# potenciação:
base = 2.0
expoente = 3.0
potencia = base ** expoente
print(potencia)  # saída : 8.0

# uso de parênteses para alterar a precedência:
resultado = (5.5 + 3.3) * 2.0
print(resultado)  # saída : 17.6

# comparação de igualdade:
preco_produto1 = 18.50
preco_produto2 = 18.50
mesmo_preco = preco_produto1 == preco_produto2
print(mesmo_preco)  # saída : True

# comparação de diferença:
nota1 = 7.5
nota2 = 8.0
notas_diferentes = nota1 != nota2
print(notas_diferentes)  # saída : True

# comparação maior que:
saldo_banco = 1500.75
saldo_minimo = 1000.00
acima_do_minimo = saldo_banco > saldo_minimo
print(acima_do_minimo)  # saída : True

# comparação menor que:
velocidade_carro = 80.5
velocidade_limite = 90.0
abaixo_limite = velocidade_carro < velocidade_limite
print(abaixo_limite)  # saída : True

# comparação maior ou igual a:
temperatura = 30.0
temperatura_minima = 30.0
dentro_do_padrao = temperatura >= temperatura_minima
print(dentro_do_padrao)  # saída : True

# comparação menor ou igual a:
pessoas_na_fila = 10.5
capacidade_maxima = 15.0
pode_entrar = pessoas_na_fila <= capacidade_maxima
print(pode_entrar)  # saída : True

# uso de constante:
PI = 3.14
raio = 5.0
circunferencia = 2 * PI * raio
print(circunferencia)  # saída : 31.400000000000002

# soma com variável e constante:
INCREMENTO = 10.0
valor = 25.5
novo_valor = valor + INCREMENTO
print(novo_valor)  # saída : 35.5

# subtração com variável e constante:
DESCONTO = 5.0
preco_original = 50.0
preco_com_desconto = preco_original - DESCONTO
print(preco_com_desconto)  # saída : 45.0

# expressão complexa com várias operações:
resultado = (4.5 + 5.2) * 2.0 - (3.0 ** 2) // 2.0
print(resultado)  # saída : 11.4

# divisão com resultado decimal:
a = 10.0
b = 4.0
divisao_decimal = a / b
print(divisao_decimal)  # saída : 2.5

# uso de variável para armazenar resultado de uma expressão:
numero1 = 15.5
numero2 = 5.2
resultado_expressao = (numero1 * 2.0 + numero2) / 3.0
print(resultado_expressao)  # saída : 12.066666666666668
```

## combinando int e float

Tanto o tipo inteiro `int` quanto o tipo ponto flutuante `float` são tipos numéricos, então eles podem ser usados juntos para as operações acima.

Veja exemplos :

```python
# adição de um inteiro e um float:
a = 5
b = 3.2
resultado = a + b
print(resultado)  # saída : 8.2

# subtração de um float por um inteiro:
x = 10.5
y = 4
diferenca = x - y
print(diferenca)  # saída : 6.5

# multiplicação de um inteiro por um float:
largura = 7
altura = 5.2
area = largura * altura
print(area)  # saída : 36.4

# divisão de um inteiro por um float:
total = 20
partes = 4.0
divisao = total / partes
print(divisao)  # saída : 5.0

# divisão de um float e um inteiro (divisão inteira):
total = 23.4
partes = 4
divisao = total // partes
print(divisao)  # saída : 5.0

# resto da divisão de um inteiro por um float (módulo):
numero = 17
divisor = 3.2
resto = numero % divisor
print(resto)  # saída : 1.3999999999999986

# potenciação com base float e expoente inteiro:
base = 2.5
expoente = 3
potencia = base ** expoente
print(potencia)  # saída : 15.625

# uso de parênteses para alterar a precedência com inteiro e float:
resultado = (5 + 3.3) * 2
print(resultado)  # saída : 16.6

# comparação de igualdade entre inteiro e float:
idade_joao = 18
idade_maria = 18.0
mesma_idade = idade_joao == idade_maria
print(mesma_idade)  # saída : True

# soma de uma constante inteira com uma variável float:
INCREMENTO = 10
valor = 25.5
novo_valor = valor + INCREMENTO
print(novo_valor)  # saída : 35.5

# expressão complexa com inteiros e floats:
resultado = (4 + 5.5) * 2 - (3 ** 2) // 2.0
print(resultado)  # saída : 10.0
```

## str

O tipo texto, chamado de String `str`, é o tipo usado para representar tudo que é texto e que está entre aspas simples `'...'`, aspas duplas `"..."` e aspas triplas `'''...'''` e `"""..."""`, essa última conhecida como strings literais.

A indexação de strings em Python é uma maneira de acessar caracteres individuais dentro de uma string.

A indexação de strings começa do 0. Isso significa que o primeiro caractere da string está no índice 0, o segundo caractere está no índice 1, e assim por diante.
Por exemplo, para a string "Python", o caractere 'P' está no índice 0, 'y' está no índice 1, 't' está no índice 2, etc.

```python
texto = "Python"
print(texto[0])  # saída : P
print(texto[1])  # saída : y
```

Índices negativos são usados para acessar caracteres a partir do final da string. O índice -1 refere-se ao último caractere, -2 ao penúltimo, e assim por diante.
Por exemplo, para a string "Python", o caractere 'n' está no índice -1 e 'o' está no índice -2.

```python
texto = "Python"
print(texto[-1])  # saída : n
print(texto[-2])  # saída : o
```

O fatiamento permite extrair uma parte da string. A sintaxe é texto[início:fim:passo], onde:
- `início` é o índice onde o fatiamento começa (inclusivo),
- `fim` é o índice onde o fatiamento termina (exclusivo),
- `passo` é o intervalo entre os caracteres que serão incluídos (opcional).

Se o início ou fim não forem fornecidos, o fatiamento usará o início ou o final da string, respectivamente.

```python
texto = "Python"
print(texto[:3])    # saída : Pyt (do início até o índice 2)
print(texto[3:])    # saída : hon (do índice 3 até o final)
print(texto[::2])   # saída : Pto (passo 2, pegando cada segundo caractere)
print(texto[::-1])   # saída : nohtyP (passo -1, inverte a string)
```

Veja alguns exemplos :

```python
# concatenando duas strings:
saudacao = "Olá"
nome = "Mundo"
mensagem = saudacao + " " + nome
print(mensagem)  # saída : Olá Mundo

# concatenando strings com números:
parte1 = "Número"
parte2 = " 42"
resultado = parte1 + parte2
print(resultado)  # saída : Número 42

# multiplicação de uma string:
repeticao = "Ha" * 3
print(repeticao)  # saída : HaHaHa

# uso do caractere de nova linha \n:
mensagem = "Primeira linha\nSegunda linha"
print(mensagem)
# saída :
# Primeira linha
# Segunda linha

# uso do caractere de tabulação \t:
mensagem = "Nome:\tJoão"
print(mensagem)
# saída :
# Nome:    João

# uso da barra invertida \ para escapar caracteres:
caminho = "C:\\Users\\Nome"
print(caminho)  # saída : C:\Users\Nome

# concatenando com \n:
linha1 = "Esta é a primeira linha"
linha2 = "Esta é a segunda linha"
mensagem = linha1 + "\n" + linha2
print(mensagem)
# saída :
# Esta é a primeira linha
# Esta é a segunda linha

# concatenando com \t:
chave = "Chave:"
valor = "12345"
mensagem = chave + "\t" + valor
print(mensagem)
# saída :
# Chave:  12345

# uso de aspas simples dentro de uma string com aspas duplas:
mensagem = "Ela disse: 'Olá!'"
print(mensagem)  # saída : Ela disse: 'Olá!'

# uso de aspas duplas dentro de uma string com aspas simples:
mensagem = 'Ele respondeu: "Bom dia!"'
print(mensagem)  # saída : Ele respondeu: "Bom dia!"

# concatenando com variáveis:
nome = "Ana"
saudacao = "Bom dia, " + nome + "!"
print(saudacao)  # saída : Bom dia, Ana!

# multiplicação de strings com espaços:
ponto = ". "
linha = ponto * 10
print(linha)  # saída : . . . . . . . . . .

# uso do caractere de nova linha para formatação:
lista_compras = "Itens:\n- Maçã\n- Banana\n- Laranja"
print(lista_compras)
# saída :
# Itens:
# - Maçã
# - Banana
# - Laranja

# uso do caractere de tabulação para formatação:
tabela = "Produto\tPreço\nMaçã\t1.50\nBanana\t0.75"
print(tabela)
# saída :
# Produto    Preço
# Maçã       1.50
# Banana     0.75

# uso da barra invertida para incluir aspas duplas:
mensagem = "Ele disse: \"Bom trabalho!\""
print(mensagem)  # saída : Ele disse: "Bom trabalho!"

# uso da barra invertida para incluir aspas simples:
mensagem = 'Ela disse: \'Até logo!\''
print(mensagem)  # saída : Ela disse: 'Até logo!'

# concatenando strings literais:
mensagem = "Python " + "é " + "divertido!"
print(mensagem)  # saída : Python é divertido!

# uso de caracteres especiais em uma string:
texto = "Linha1\nLinha2\tTabbed\nCaminho: C:\\Usuários\\Nome"
print(texto)
# saída :
# Linha1
# Linha2  Tabbed
# Caminho: C:\Usuários\Nome

# concatenando strings com múltiplas linhas:
mensagem = "Olá,\n" + "Este é um exemplo de mensagem\n" + "com múltiplas linhas."
print(mensagem)
# saída :
# Olá,
# Este é um exemplo de mensagem
# com múltiplas linhas.

# multiplicação de strings para criar um padrão:
padrao = "AB" * 5
print(padrao)  # saída : ABABABABAB

# uso de aspas duplas dentro de aspas duplas com escape:
frase = "Ele disse: \"Isso é incrível!\""
print(frase)  # saída : Ele disse: "Isso é incrível!"

# uso de aspas simples dentro de aspas simples com escape:
frase = 'Ela respondeu: \'Sim, estou de acordo.\''
print(frase)  # saída : Ela respondeu: 'Sim, estou de acordo.'

# uso de caracteres de nova linha \n em uma string longa:
mensagem = "Linha 1\nLinha 2\nLinha 3"
print(mensagem)
# saída :
# Linha 1
# Linha 2
# Linha 3

# uso de tabulação \t para alinhar texto:
tabela = "Nome\tIdade\tCidade\nAna\t30\tSão Paulo\nCarlos\t25\tRio de Janeiro"
print(tabela)
# saída :
# Nome    Idade    Cidade
# Ana     30       São Paulo
# Carlos  25       Rio de Janeiro

# uso de barra invertida para escapar uma barra invertida:
caminho = "C:\\Usuários\\Publico"
print(caminho)  # saída : C:\Usuários\Publico

# uso de aspas simples dentro de uma string com aspas duplas sem escape:
mensagem = "O livro se chama 'Python para Iniciantes'"
print(mensagem)  # saída : O livro se chama 'Python para Iniciantes'

# uso de aspas duplas dentro de uma string com aspas simples sem escape:
mensagem = 'Ele disse: "Boa sorte!"'
print(mensagem)  # saída : Ele disse: "Boa sorte!"

# string literal com múltiplas linhas usando aspas triplas:
mensagem = '''Esta é uma string
que ocupa múltiplas linhas,
sem a necessidade de caracteres de nova linha.'''
print(mensagem)
# saída :
# Esta é uma string
# que ocupa múltiplas linhas,
# sem a necessidade de caracteres de nova linha.

# uso de aspas triplas dentro de aspas triplas:
texto = """Ela disse: "Isso é 'fantástico'!"
E ele respondeu: "Concordo completamente."""
print(texto)
# saída :
# Ela disse: "Isso é 'fantástico'!"
# E ele respondeu: "Concordo completamente."

# acessando o primeiro caractere
texto = "Python"
print(texto[0])  # saída : P

# acessando o terceiro caractere
texto = "Python"
print(texto[2])  # saída : t

# acessando o último caractere
texto = "Python"
print(texto[-1])  # saída : n

# acessando o penúltimo caractere
texto = "Python"
print(texto[-2])  # saída : o

# fatiando os primeiros três caracteres
texto = "Python"
print(texto[:3])  # saída : Pyt

# fatiando os caracteres do índice 2 ao 5
texto = "Python"
print(texto[2:6])  # saída : thon

# fatiando a partir do índice 4 até o final
texto = "Python"
print(texto[4:])  # saída : hon

# fatiando até o índice 4
texto = "Python"
print(texto[:4])  # saída : Pyt

# fatiando com passo de 2 caracteres
texto = "Python"
print(texto[::2])  # saída : Pto

# fatiando com passo negativo
texto = "Python"
print(texto[::-1])  # saída : nohtyP

# fatiando com passo de 3 caracteres
texto = "Python"
print(texto[::3])  # saída : Phn

# fatiando com início e fim específicos
texto = "Python"
print(texto[1:5:2])  # saída : ytn

# fatiando uma string com tamanho variável
texto = "Indexação"
print(texto[3:7])  # saída : exaç

# fatiando uma string com caracteres especiais
texto = "Hello, World!"
print(texto[7:])  # saída : World!

# acessando um caractere em uma string de números
texto = "123456"
print(texto[4])  # saída : 5

# fatiando uma string para pegar caracteres de um espaço em branco
texto = "Python Programming"
print(texto[7:11])  # saída : Prog

# fatiando uma string para pegar caracteres de uma palavra específica
texto = "A quick brown fox"
print(texto[2:9])  # saída : quick b

# fatiando uma string para pegar a última palavra
texto = "A quick brown fox"
print(texto[11:])  # saída : brown fox

# fatiando uma string para pegar caracteres com diferentes passos
texto = "abcdefghijk"
print(texto[::4])  # saída : ae
```

## bool

O tipo lógico, chamado de boolean `bool` no Python, é usado quando se quer representar um valor lógico de verdadeiro ou falso. Ele é muito usado nas estruturas de decisões como `if-elif-else` e `while`, por exemplo.

Veja alguns exemplos :

```python
# comparação de igualdade entre inteiros:
a = 5
b = 5
resultado = a == b
print(resultado)  # saída : True

# comparação de diferença entre inteiros:
a = 5
b = 3
resultado = a != b
print(resultado)  # saída : True

# comparação maior que entre inteiros:
a = 10
b = 5
resultado = a > b
print(resultado)  # saída : True

# comparação menor que entre inteiros:
a = 5
b = 10
resultado = a < b
print(resultado)  # saída : True

# comparação maior ou igual entre inteiros:
a = 10
b = 10
resultado = a >= b
print(resultado)  # saída : True

# comparação menor ou igual entre inteiros:
a = 5
b = 10
resultado = a <= b
print(resultado)  # saída : True

# comparação de igualdade entre strings:
palavra1 = "python"
palavra2 = "python"
resultado = palavra1 == palavra2
print(resultado)  # saída : True

# comparação de diferença entre strings:
palavra1 = "python"
palavra2 = "Python"
resultado = palavra1 != palavra2
print(resultado)  # saída : True

# uso do operador and (e lógico):
a = True
b = False
resultado = a and b
print(resultado)  # saída : False

# uso do operador or (ou lógico):
a = True
b = False
resultado = a or b
print(resultado)  # saída : True

# uso do operador not (não lógico):
a = True
resultado = not a
print(resultado)  # saída : False

# combinação de operadores relacionais e lógicos:
a = 10
b = 5
c = 7
resultado = (a > b) and (c < a)
print(resultado)  # saída : True

# comparação entre float e inteiro:
a = 10.0
b = 10
resultado = a == b
print(resultado)  # saída : True

# comparação de strings com diferentes casos:
palavra1 = "pythoN"
palavra2 = "python"
resultado = palavra1 == palavra2
print(resultado)  # saída : False

# verificação se um número é par:
numero = 4
resultado = numero % 2 == 0
print(resultado)  # saída : True

# verificação se um número é ímpar:
numero = 5
resultado = numero % 2 != 0
print(resultado)  # saída : True

# outra forma de verificar se um número é par ou ímpar
numero = 5
valor = numero // 2
valor = valor * 2
resultado = valor == numero
print(resultado)

# combinação de operadores and, or e not:
a = True
b = False
c = True
resultado = (a and b) or (not c)
print(resultado)  # saída : False

# comparação entre variáveis booleanas:
a = True
b = False
resultado = a == b
print(resultado)  # saída : False
```

## exercícios

<details>
<summary>Lista de Exercícios</summary>

### int e float

1. Exercícios Iniciais
    1. Crie uma variável x com o valor 10 e uma variável y com o valor 5. Imprima a soma de x e y.
    1. Crie uma variável a com o valor 8 e uma variável b com o valor 4. Imprima o resultado da subtração de a por b.
    1. Crie uma variável x com o valor 7 e uma variável y com o valor 3. Imprima o resultado da multiplicação de x por y.
    1. Crie uma variável x com o valor 20 e uma variável y com o valor 4. Imprima o resultado da divisão de x por y.
    1. Crie uma variável x com o valor 10 e outra variável y com o valor 4. Imprima o resto da divisão de x por y.
    1. Crie uma variável a com o valor 15. Imprima o valor de a elevado ao quadrado.
    1. Crie uma variável a com o valor 9 e outra variável b com o valor 2. Imprima a divisão inteira de a por b.
    1. Crie uma variável x com o valor 5.5 e uma variável y com o valor 2.2. Imprima a soma de x e y.
    1. Crie uma variável x com o valor 3.7 e uma variável y com o valor 1.2. Imprima o resultado da subtração de x por y.
    1. Crie uma variável x com o valor 4.5 e uma variável y com o valor 2. Imprima o resultado da multiplicação de x por y.
1. Exercícios Intermediários
    1. Crie uma variável a com o valor 25 e outra variável b com o valor 7. Imprima o resultado da divisão de a por b, com 2 casas decimais.
    1. Crie uma variável x com o valor 6.7 e uma variável y com o valor 3.1. Imprima a soma de x e y, com 1 casa decimal.
    1. Crie uma variável a com o valor 16 e outra variável b com o valor 4. Crie uma terceira variável resultado que armazene a raiz quadrada de a dividida por b. Imprima resultado.
    1. Crie uma variável x com o valor 12.5 e uma variável y com o valor 2.5. Imprima a diferença entre x e y e verifique se é maior que 8.
    1. Crie uma variável a com o valor 3.14 e outra variável b com o valor 2. Crie uma variável resultado que armazene a multiplicação de a por b, e imprima o resultado com 3 casas decimais.
    1. Crie uma variável x com o valor 45.9 e outra variável y com o valor 15.1. Imprima o resultado da divisão de x por y, com 4 casas decimais.
    1. Crie uma variável a com o valor 0.5 e outra variável b com o valor 0.25. Imprima a soma de a e b, multiplicada por 100.
    1. Crie uma variável x com o valor 8.2 e uma variável y com o valor 3.4. Imprima o resultado da multiplicação de x por y e verifique se é menor que 30.
    1. Crie uma variável a com o valor 17 e outra variável b com o valor 3. Crie uma variável resultado que armazene a soma de a com o resto da divisão de a por b. Imprima resultado.
    1. Crie uma variável x com o valor 5.6 e outra variável y com o valor 2.3. Imprima o resultado da subtração de x por y, arredondado para o inteiro mais próximo.
1. Exercícios Avançados
    1. Crie uma variável x com o valor 9 e uma variável y com o valor 4. Imprima o resultado da expressão (x ** 2 + y ** 2) / (x - y).
    1. Crie uma variável x com o valor 10.5 e uma variável y com o valor 2.7. Imprima o resultado da expressão (x * y) - (x / y).
    1. Crie uma variável a com o valor 12 e uma variável b com o valor 5. Crie uma variável resultado que armazene a soma de a e b, elevada ao quadrado. Imprima resultado.
    1. Crie uma variável x com o valor 6.8 e uma variável y com o valor 2.4. Imprima a soma de x com y, multiplicada pelo resto da divisão de x por y.
    1. Crie uma variável a com o valor 20 e outra variável b com o valor 7. Crie uma variável resultado que armazene a média de a e b. Imprima resultado com 2 casas decimais.
    1. Crie uma variável x com o valor 15.75 e uma variável y com o valor 3.5. Imprima o resultado da expressão x / y somado ao quadrado de y.
    1. Crie uma variável a com o valor 8 e uma variável b com o valor 3. Crie uma variável resultado que armazene a diferença entre a e b, e verifique se o quadrado do resultado é maior que 20. Imprima resultado.
    1. Crie uma variável x com o valor 7.5 e uma variável y com o valor 3.2. Imprima o resultado da expressão (x + y) / (x - y) com 2 casas decimais.
    1. Crie uma variável a com o valor 25 e uma variável b com o valor 5. Crie uma variável resultado que armazene o valor absoluto da diferença entre o quadrado de a e o cubo de b. Imprima resultado.
    1. Crie uma variável x com o valor 10.4 e uma variável y com o valor 3.6. Imprima a expressão (x ** 2 + y ** 2) / (x * y) e verifique se é maior que 5.
    1. Crie uma variável a com o valor 8 e outra variável b com o valor 3. Crie uma variável resultado que armazene a soma de a e b, e imprima o resultado dividido pela raiz quadrada de a.
    1. Crie uma variável x com o valor 11.2 e uma variável y com o valor 5.7. Imprima o resultado da expressão (x - y) * (x + y), com 2 casas decimais.
    1. Crie uma variável a com o valor 30 e outra variável b com o valor 4. Crie uma variável resultado que armazene a diferença entre a e b, elevada ao cubo. Imprima resultado.
    1. Crie uma variável x com o valor 8.5 e uma variável y com o valor 2.3. Imprima a expressão (x * y) + (x / y) e verifique se é menor que 20.
    1. Crie uma variável a com o valor 18 e uma variável b com o valor 7. Crie uma variável resultado que armazene o valor absoluto da diferença entre a e o produto de b por 2. Imprima resultado.
    1. Crie uma variável x com o valor 14.7 e uma variável y com o valor 6.3. Imprima o resultado da expressão (x + y) / (x - y) e verifique se é maior que 2.
    1. Crie uma variável a com o valor 12 e uma variável b com o valor 5. Crie uma variável resultado que armazene a soma de a e b, multiplicada pela raiz quadrada de a. Imprima resultado.
    1. Crie uma variável x com o valor 9.8 e uma variável y com o valor 4.2. Imprima a expressão ((x + y) * 2) / (x - y), com 2 casas decimais.
    1. Crie uma variável a com o valor 7 e outra variável b com o valor 2. Crie uma variável resultado que armazene o valor absoluto do quadrado de a subtraído do cubo de b. Imprima resultado.
    1. Crie uma variável x com o valor 5.5 e uma variável y com o valor 2.2. Crie uma variável resultado que armazene a soma de x e y, e imprima o resultado elevado ao quadrado.
    1. Crie uma variável a com o valor 21 e uma variável b com o valor 3. Crie uma variável resultado que armazene a diferença entre o quadrado de a e o cubo de b, dividido por b. Imprima resultado.
    1. Crie uma variável x com o valor 20.5 e uma variável y com o valor 3.2. Imprima o resultado da expressão (x - y) * (x + y), com 1 casa decimal.
    1. Crie uma variável a com o valor 18 e uma variável b com o valor 7. Crie uma variável resultado que armazene a soma de a com o produto de b e 2. Imprima resultado dividido pela raiz quadrada de a.
    1. Crie uma variável x com o valor 12.4 e uma variável y com o valor 2.5. Imprima a expressão ((x * y) + (x / y)) - (y ** 2), com 2 casas decimais.
    1. Crie uma variável a com o valor 14 e uma variável b com o valor 5. Crie uma variável resultado que armazene o quadrado da soma de a e b, dividido pelo cubo de b. Imprima resultado.
    1. Crie uma variável x com o valor 25.7 e uma variável y com o valor 8.3. Imprima o resultado da expressão (x / y) * ((x + y) / (x - y)), com 2 casas decimais.
    1. Crie uma variável a com o valor 30 e uma variável b com o valor 7. Crie uma variável resultado que armazene o produto de a por b, dividido pela diferença entre a e b. Imprima resultado.
    1. Crie uma variável x com o valor 10.5 e uma variável y com o valor 3.7. Imprima a expressão ((x * y) + (x / y)) - (x ** 2), com 2 casas decimais.
    1. Crie uma variável a com o valor 15 e uma variável b com o valor 4. Crie uma variável resultado que armazene a soma de a e b, elevada ao cubo, e depois subtraia 100. Imprima resultado.
    1. Crie uma variável x com o valor 9.9 e uma variável y com o valor 2.2. Imprima a expressão ((x ** 2) + (y ** 2)) / ((x * y) - y), com 2 casas decimais.

### str

1. Exercícios Simples
    1. Crie duas variáveis str1 e str2 com os valores "Hello" e "World". Imprima a soma das duas strings.
    1. Crie uma variável texto com o valor "Python". Imprima a string "PythonPython" usando a multiplicação de strings.
    1. Crie uma variável frase com o valor "Python Programming". Imprima os primeiros 6 caracteres da string.
    1. Crie uma variável texto com o valor "Hello, World!". Imprima os caracteres da posição 7 até o final da string.
    1. Crie uma variável mensagem com o valor "Python". Imprima os primeiros 3 caracteres.
    1. Crie uma variável palavra com o valor "Data". Imprima a string "DataDataData" usando a multiplicação de strings.
    1. Crie uma variável texto com o valor "Python". Imprima os caracteres do índice 1 ao 4.
    1. Crie duas variáveis prefixo e sufixo com os valores "Hello" e "World". Imprima a soma das duas strings com um espaço entre elas.
    1. Crie uma variável nome com o valor "Alice". Imprima a string "AliceAlice" usando a multiplicação de strings.
    1. Crie uma variável mensagem com o valor "Data Science". Imprima os caracteres do índice 5 até o final da string.
1. Exercícios Intermediários
    1. Crie uma variável texto com o valor "Learn Python". Imprima os caracteres do índice 6 ao 11.
    1. Crie uma variável frase com o valor "Hello World". Imprima a string "HelloHello" usando a multiplicação de strings.
    1. Crie uma variável texto com o valor "Programming". Imprima os primeiros 4 caracteres.
    1. Crie uma variável mensagem com o valor "String Manipulation". Imprima os caracteres do índice 8 ao 15.
    1. Crie duas variáveis part1 e part2 com os valores "Python" e "Rocks". Imprima a soma das duas strings com um espaço entre elas.
    1. Crie uma variável palavra com o valor "Machine Learning". Imprima a string "Machine LearningMachine Learning" usando a multiplicação de strings.
    1. Crie uma variável texto com o valor "Artificial Intelligence". Imprima os caracteres do índice 3 ao 8.
    1. Crie uma variável mensagem com o valor "Data Analysis". Imprima os caracteres do índice 5 ao 10.
    1. Crie uma variável frase com o valor "Learn to Code". Imprima a string "Learn to CodeLearn to Code" usando a multiplicação de strings.
    1. Crie uma variável texto com o valor "Statistics". Imprima os caracteres do índice 4 até o final da string.
1. Exercícios Avançados
    1. Crie uma variável frase com o valor "Welcome to the World of Python". Imprima os caracteres do índice 11 ao 20.
    1. Crie uma variável texto com o valor "Programming is Fun". Imprima a string "ProgrammingProgramming" usando a multiplicação de strings.
    1. Crie uma variável mensagem com o valor "Learn Python Basics". Imprima os caracteres do índice 0 ao 4.
    1. Crie uma variável frase com o valor "Data Science and Machine Learning". Imprima os caracteres do índice 17 ao 30.
    1. Crie duas variáveis str1 e str2 com os valores "Data" e "Science". Imprima a soma das duas strings com um espaço entre elas.
    1. Crie uma variável texto com o valor "Advanced Python Techniques". Imprima a string "Advanced Python TechniquesAdvanced Python Techniques" usando a multiplicação de strings.
    1. Crie uma variável mensagem com o valor "Artificial Intelligence Overview". Imprima os caracteres do índice 14 até o final da string.
    1. Crie uma variável texto com o valor "Introduction to Programming". Imprima os caracteres do índice 5 ao 25.
    1. Crie uma variável frase com o valor "Exploring Data Science" e imprima a string "Exploring Data ScienceExploring Data Science" usando a multiplicação de strings.
    1. Crie uma variável texto com o valor "Big Data Analytics". Imprima os caracteres do índice 3 ao 12.
    1. Crie uma variável mensagem com o valor "Data Visualization Techniques". Imprima os caracteres do índice 10 ao 25.
    1. Crie duas variáveis prefixo e sufixo com os valores "Machine Learning" e " in Python". Imprima a soma das duas strings com um espaço entre elas.
    1. Crie uma variável texto com o valor "Deep Learning Models". Imprima a string "Deep Learning ModelsDeep Learning Models" usando a multiplicação de strings.
    1. Crie uma variável frase com o valor "Data Driven Insights". Imprima os caracteres do índice 4 ao 12.
    1. Crie uma variável texto com o valor "Programming for Data Science". Imprima os caracteres do índice 12 até o final da string.
    1. Crie uma variável mensagem com o valor "Exploring Machine Learning Algorithms". Imprima a string "Exploring Machine Learning AlgorithmsExploring Machine Learning Algorithms" usando a multiplicação de strings.
    1. Crie uma variável texto com o valor "Advanced Data Analytics Techniques". Imprima os caracteres do índice 8 ao 28.
    1. Crie uma variável frase com o valor "Understanding Data Science Principles". Imprima os caracteres do índice 18 ao 35.
    1. Crie duas variáveis parte1 e parte2 com os valores "Introduction" e " to Python". Imprima a soma das duas strings com um espaço entre elas.
    1. Crie uma variável texto com o valor "Machine Learning Fundamentals". Imprima a string "Machine Learning FundamentalsMachine Learning Fundamentals" usando a multiplicação de strings.
    1. Crie uma variável mensagem com o valor "Data Science Applications". Imprima os caracteres do índice 5 ao 20.
    1. Crie uma variável texto com o valor "Artificial Intelligence Applications". Imprima os caracteres do índice 22 até o final da string.
    1. Crie uma variável frase com o valor "Deep Learning for AI". Imprima a string "Deep Learning for AIDeep Learning for AI" usando a multiplicação de strings.
    1. Crie uma variável texto com o valor "Introduction to Machine Learning". Imprima os caracteres do índice 0 ao 15.
    1. Crie uma variável mensagem com o valor "Python for Data Science and Analytics". Imprima os caracteres do índice 10 ao 35.
    1. Crie duas variáveis str1 e str2 com os valores "Deep Learning" e " in Python". Imprima a soma das duas strings com um espaço entre elas.
    1. Crie uma variável texto com o valor "Understanding Data Science Techniques". Imprima a string "Understanding Data Science TechniquesUnderstanding Data Science Techniques" usando a multiplicação de strings.
    1. Crie uma variável frase com o valor "Introduction to Data Visualization". Imprima os caracteres do índice 11 ao 30.
    1. Crie uma variável texto com o valor "Advanced Machine Learning Techniques". Imprima os caracteres do índice 10 ao 35.
    1. Crie uma variável mensagem com o valor "Data Science Fundamentals Overview". Imprima a string "Data Science Fundamentals OverviewData Science Fundamentals Overview" usando a multiplicação de strings.

</details>
