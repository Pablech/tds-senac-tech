Índice

1. [pontos importantes](#pontos-importantes)
1. [`open()`](#open)
1. [modos do `open()`](#modos-do-open)
1. [métodos do arquivo](#métodos-do-arquivo)
    1. [`read()`](#read)
    1. [`readline()`](#readline)
    1. [`readlines()`](#readlines)
    1. [`readline()` vs `readlines()`](#readline-vs-readlines)
    1. [`write()`](#write)
    1. [`writelines()`](#writelines)
1. [`close()`](#close)
1. [exercícios de arquivos](#exercícios-de-arquivos)
1. [`with`](#with)
    1. [funcionamento](#funcionamento)
    1. [vantagens](#vantagens)
    1. [exemplos de `with` com `open()`](#exemplos-de-with-com-open)
    1. [múltiplos arquivos com `with`](#múltiplos-arquivos-com-with)
1. [exercícios com `with`](#exercícios-com-with)

# arquivos

O processo de leitura de arquivos no Python envolve abrir um arquivo, ler seu conteúdo e, em seguida, fechá-lo. Python oferece diferentes modos de leitura, como `r` para leitura, `w` para escrita, e `a` para adicionar conteúdo. O processo é realizado por meio da função `open()`, que retorna um objeto de arquivo, usado para manipular o conteúdo.

Exemplo básico :

```python
with open('arquivo.txt', 'r') as arquivo:
    conteudo = arquivo.read()
    print(conteudo)
```

Neste exemplo, o comando `with` garante que o arquivo seja fechado corretamente após sua utilização, mesmo em caso de erro. Mais adiante isso será visto com detalhes.

## pontos importantes

### finalidades :
- **processamento de dados** : utilizado para ler dados de arquivos de texto, csvs, logs, etc., e manipulá-los no código;
- **entrada e saída de dados** : permite salvar e carregar informações persistentes, facilitando o armazenamento de resultados ou configurações;

### vantagens :
- **simplicidade** : a leitura de arquivos é direta e fácil de implementar;
- **flexibilidade** : python pode manipular diversos tipos de arquivos (texto, binários, csv, json, etc.);
- **automação**: pode ser usada para automatizar tarefas que envolvem manipulação de dados em massa;

### desvantagens :
- **limitação de memória** : carregar arquivos grandes pode consumir muita memória, afetando o desempenho;
- **erro de codificação** : arquivos podem ter diferentes codificações (ex.: utf-8, ascii), e erros podem ocorrer ao ler arquivos com codificação incorreta;

### cuidados :
- **fechar o arquivo** : sempre garantir que o arquivo seja fechado após a leitura para evitar corrupção de dados ou consumo desnecessário de recursos;
- **exceções** : tratar exceções, como erros de arquivo não encontrado (`FileNotFoundError`) ou de permissões de leitura;
- **codificação** : verificar e definir corretamente a codificação ao abrir o arquivo;

Esses são os pontos essenciais para uma leitura segura e eficiente de arquivos em Python.

## `open()`

A função `open()` no Python é usada para abrir arquivos e manipular dados dentro deles. Essa função cria um objeto que permite que se leia, escreva ou adicione informações a um arquivo de texto ou binário. O uso de `open()` envolve a especificação de um caminho de arquivo e, opcionalmente, um modo de operação (como leitura ou escrita).

Veja sua sinxtaxe básica :

```python
arquivo = open('caminho_do_arquivo', 'modo')
```

A função `open()` retorna um objeto de arquivo que pode ser manipulado para realizar operações como leitura (`read`), escrita (`write`) ou adição de conteúdo (`append`), dependendo do modo escolhido.

### modos mais comuns:

1. **`'r'`** (leitura) : abre um arquivo para leitura. este é o modo padrão. o arquivo deve existir; caso contrário, um erro será gerado;
1. **`'w'`** (escrita) : abre um arquivo para escrita; se o arquivo não existir, ele será criado; se o arquivo já existir, o conteúdo será sobrescrito;
1. **`'a'`** (anexar) : abre o arquivo para anexar dados no final do arquivo. se o arquivo não existir, ele será criado;

### modos do `open()`

O Python possui diversas formas de abrir um arquivo. Abaixo há as formas mais comuns.

| Modo | Uso                                  | Comportamento                                          |
|------|--------------------------------------|--------------------------------------------------------|
| `r`  | leitura                              | abre o arquivo para leitura; gera erro se não existir; |
| `w`  | escrita (sobrescreve)                | abre o arquivo para escrita; cria ou sobrescreve.      |
| `a`  | anexar                               | abre o arquivo para anexar dados; cria se não existir; |

#### 1. modo de leitura `r`

O modo `r` é usado para **abrir um arquivo para leitura**. Quando um arquivo é aberto nesse modo, ele deve **existir previamente**, caso contrário, um erro será gerado (`FileNotFoundError`). O ponteiro do arquivo (a posição de leitura) começa no início do arquivo.

Veja sua sintaxe :

```python
arquivo = open('exemplo.txt', 'r')
conteudo = arquivo.read()  # lê todo o conteúdo do arquivo
arquivo.close()  # fecha o arquivo após a leitura
```

##### exemplo

Suponha que exista um arquivo `dados.txt` com o seguinte conteúdo :

```
Python é uma linguagem de programação.
Ela é poderosa e fácil de aprender.
```

Agora, vamos abrir esse arquivo e ler seu conteúdo :

```python
# abrindo o arquivo para leitura
arquivo = open('dados.txt', 'r')

conteudo = arquivo.read()  # lendo o conteúdo do arquivo

print(f'{conteudo = }')  # exibe o conteúdo no terminal
arquivo.close()  # fecha o arquivo
```

Se o arquivo `dados.txt` não existir, o Python levantará uma exceção :

```python
FileNotFoundError: [Errno 2] No such file or directory: 'dados.txt'
```

#### 2. modo de escrita `w`

O modo `w` é usado para **abrir um arquivo para escrita**. Esse modo **sobrescreve** o conteúdo do arquivo caso ele já exista. Se o arquivo **não existir**, ele será criado automaticamente. O ponteiro de escrita começa no início do arquivo.

Veja sua sintaxe :
```python
arquivo = open('exemplo.txt', 'w')
arquivo.write("Escrevendo algo no arquivo.")  # escreve no arquivo
arquivo.close()  # fecha o arquivo após a escrita
```

##### exemplo

Se deseja criar ou sobrescrever o arquivo `saida.txt` com o texto `"Aprendendo a escrever em arquivos!"`, pode usar o seguinte código :

```python
# abrindo o arquivo para escrita
arquivo = open('saida.txt', 'w')
arquivo.write("Aprendendo a escrever em arquivos!")  # escreve no arquivo
arquivo.close()  # fecha o arquivo
```

Se o arquivo `saida.txt` já existia e tinha algum conteúdo, todo o conteúdo anterior será apagado e substituído pela nova string.

#### 3. modo de anexar `a`

O modo `a` é usado para **abrir um arquivo e anexar dados ao final** do arquivo. Esse modo é útil quando se quer adicionar dados a um arquivo sem sobrescrever o conteúdo existente. Se o arquivo **não existir**, ele será criado. O ponteiro de escrita começa no **final** do arquivo, ou seja, novos dados são sempre adicionados após o conteúdo existente.

Veja sua sintaxe básica :

```python
arquivo = open('exemplo.txt', 'a')
arquivo.write("Adicionando uma nova linha.")  # anexa dados ao arquivo
arquivo.close()  # fecha o arquivo
```

##### exemplo

Se deseja adicionar novas entradas a um arquivo `log.txt`, sem apagar as entradas anteriores, pode usar o modo `a`:

```python
# abrindo o arquivo para anexar dados
arquivo = open('log.txt', 'a')
arquivo.write("Nova entrada de log.\n")  # anexa ao arquivo
arquivo.close()  # Fecha o arquivo
```

Isso adicionará a frase `"Nova entrada de log."` ao final do arquivo. Se executar o programa várias vezes, ele continuará adicionando essa frase ao final do arquivo, sem remover os dados anteriores.


## métodos do arquivo

A função `open()` em Python retorna um objeto de arquivo, que possui vários métodos para manipular seu conteúdo. Dentre os mais importantes, há os métodos `read()`, `readline()`, `readlines()`, `write()` e `writelines()`.

### `read()`

O método `read()` lê o conteúdo de um arquivo inteiro (ou parte dele, dependendo dos parâmetros passados).

Veja sua sintaxe :

```python
conteudo = arquivo.read(tamanho)
```

- **tamanho** (opcional): é o número de caracteres ou bytes a serem lidos; se omitido, `read()` lê o arquivo inteiro;

#### exemplo

```python
arquivo = open('exemplo.txt', 'r')

# lendo todo o conteúdo do arquivo
conteudo = arquivo.read()
print(conteudo)

arquivo.close()
```

Se o arquivo `exemplo.txt` contiver :
```
Primeira linha
Segunda linha
Terceira linha
```

A saída será :
```
Primeira linha
Segunda linha
Terceira linha
```

#### lendo parte do arquivo :

É possível especificar quantos caracteres ler com o argumento `tamanho`. Por exemplo:

```python
arquivo = open('exemplo.txt', 'r')

# lendo apenas os primeiros 10 caracteres
conteudo = arquivo.read(10)
print(conteudo)

arquivo.close()
```

Se o conteúdo do arquivo for o mesmo, a saída será :
```
Primeira
```

Aqui, foram lidos os primeiros 10 caracteres do arquivo.

### `readline()`

O método `readline()` lê **uma linha** do arquivo por vez. Ele é útil quando se deseja processar o arquivo linha por linha.

Veja sua sintaxe :

```python
linha = arquivo.readline(tamanho)
```

- **tamanho** (opcional) : limita o número máximo de caracteres a serem lidos da linha;

#### exemplo

```python
arquivo = open('exemplo.txt', 'r')

# lendo a primeira linha do arquivo
linha = arquivo.readline()
print(linha)

arquivo.close()
```

Se o arquivo contiver :
```
Primeira linha
Segunda linha
Terceira linha
```

A saída será :
```
Primeira linha
```

#### lendo todas as linhas com `readline()`

Se quiser ler todas as linhas do arquivo, pode usar um loop :

```python
arquivo = open('exemplo.txt', 'r')

linha = arquivo.readline()
while linha:
    print(linha, end='')  # end='' evita uma linha extra ao final
    linha = arquivo.readline()

arquivo.close()
```

A saída será:
```
Primeira linha
Segunda linha
Terceira linha
```

#### limitando o número de caracteres por linha

É possível limitar o número de caracteres que serão lidos por linha :

```python
arquivo = open('exemplo.txt', 'r')

# lendo apenas os primeiros 8 caracteres da primeira linha
linha = arquivo.readline(8)
print(linha)

arquivo.close()
```

Isso resultará em:
```
Primeira
```

### `readlines()`

O método `readlines()` lê **todas as linhas do arquivo de uma só vez** e as armazena em uma **lista**, onde cada linha é um elemento.

Veja sua sintaxe :

```python
linhas = arquivo.readlines()
```

#### exemplo
```python
arquivo = open('exemplo.txt', 'r')

# lendo todas as linhas do arquivo
linhas = arquivo.readlines()

# imprimindo a lista de linhas
print(linhas)

arquivo.close()
```

Se o arquivo contiver :

```
Primeira linha
Segunda linha
Terceira linha
```

A saída será :

```python
['Primeira linha\n', 'Segunda linha\n', 'Terceira linha\n']
```

Aqui, cada linha do arquivo se torna um item da lista. Note que os caracteres de nova linha (`\n`) são preservados.

Logo, é possível iterar sobre essa lista para processar cada linha individualmente :

```python
arquivo = open('exemplo.txt', 'r')

# lendo todas as linhas do arquivo
linhas = arquivo.readlines()

# iterando sobre as linhas e imprimindo uma a uma
for linha in linhas:
    print(linha, end='')

arquivo.close()
```

Isso exibirá :

```
Primeira linha
Segunda linha
Terceira linha
```

### `readline()` vs `readlines()`

Em suma :

- `readline()` lê **uma linha** por vez;
- `readlines()` lê **todas as linhas** de uma vez e as retorna como uma lista;

### `write()`

O método `write()` é usado para **escrever dados em um arquivo**. Pode ser utilizado em modos de escrita (`'w'`, `'a'`, `'w+'`, `'a+'`, etc.). Lembre-se de que o método **não adiciona automaticamente uma nova linha**, então precisará incluir `\n` manualmente se quiser pular linhas.

Veja a sintaxe :

```python
arquivo.write(texto)
```

- **texto**: é o conteúdo que você deseja escrever no arquivo. deve ser uma string;

#### exemplo

```python
arquivo = open('exemplo.txt', 'w')

# escrevendo texto no arquivo
arquivo.write("Primeira linha\n")
arquivo.write("Segunda linha\n")

arquivo.close()
```

Aqui :
- o arquivo `exemplo.txt` será sobrescrito (ou criado se não existir);
- o método `write()` insere as linhas fornecidas no arquivo;
- o `\n` é necessário para garantir que cada linha seja escrita em uma nova linha no arquivo;

#### exemplo

Se quiser **anexar** (adicionar) novas informações ao final de um arquivo, pode abrir o arquivo no modo de anexar (`'a'`) :

```python
arquivo = open('exemplo.txt', 'a')

# adicionando uma nova linha ao final do arquivo
arquivo.write("Terceira linha adicionada\n")

arquivo.close()
```

Isso não sobrescreverá o conteúdo existente, mas adicionará a nova linha ao final do arquivo.

#### importante :

- o método `write()` **não adiciona quebras de linha automaticamente**; portanto, se quiser que o texto vá para a próxima linha, adicione `\n` no final da string que está escrevendo;
- se usar o modo `'w'`, o arquivo será **sobrescrito**; todo o conteúdo anterior será apagado;

### `writelines()`

O método `writelines()` em Python é usado para **escrever uma sequência de strings** em um arquivo de uma só vez. A sequência pode ser uma lista, tupla ou qualquer objeto iterável que contenha strings.

Diferentemente do método `write()`, que escreve uma única string de cada vez, o `writelines()` permite escrever várias linhas de uma só vez, **sem adicionar automaticamente quebras de linha** (`\n`). Se quiser que cada linha seja escrita em uma nova linha no arquivo, precisará incluir manualmente o caractere de nova linha (`\n`) ao final de cada string da sequência.

Veja a sintaxe :

```python
arquivo.writelines(iteravel)
```

- **iterável**: um objeto que contém múltiplas strings, como uma lista ou tupla;

#### exemplo :

Aqui está um exemplo de como usar `writelines()` para escrever várias linhas em um arquivo :

```python
# abrindo o arquivo no modo de escrita
arquivo = open('exemplo.txt', 'w')

# lista de linhas para serem escritas
linhas = ["Primeira linha\n", "Segunda linha\n", "Terceira linha\n"]

# escrevendo todas as linhas no arquivo de uma vez
arquivo.writelines(linhas)

# fechando o arquivo
arquivo.close()
```

Neste exemplo :
- o arquivo `exemplo.txt` será criado ou sobrescrito;
- as três linhas da lista `linhas` são escritas de uma só vez no arquivo;
- note que cada string na lista termina com `\n` para garantir que as linhas sejam separadas no arquivo;

#### importante

O método `writelines()` **não adiciona automaticamente quebras de linha** (`\n`). Se as strings no iterável não tiverem `\n`, elas serão escritas consecutivamente, sem separação.

```python
arquivo = open('exemplo.txt', 'w')

# lista de linhas sem \n
linhas = ["Primeira linha", "Segunda linha", "Terceira linha"]

# escrevendo todas as linhas no arquivo
arquivo.writelines(linhas)

arquivo.close()
```

Neste caso, o conteúdo do arquivo será :

```
Primeira linhaSegunda linhaTerceira linha
```

#### iteráveis além de listas

É também possível usar qualquer objeto iterável que contenha strings, como uma tupla ou até um gerador.

#### exemplo com uma tupla

```python
arquivo = open('exemplo.txt', 'w')

# tupla de strings
linhas = ("Linha 1\n", "Linha 2\n", "Linha 3\n")

arquivo.writelines(linhas)

arquivo.close()
```

#### exemplo com um gerador

```python
arquivo = open('exemplo.txt', 'w')

# gerador de strings
linhas = (f"Linha {i}\n" for i in range(1, 4))

arquivo.writelines(linhas)

arquivo.close()
```

## `close()`

O método **`close()`** em Python é utilizado para **fechar um arquivo** que foi previamente aberto. Quando um arquivo é aberto com a função `open()`, ele ocupa recursos do sistema, como memória e descritores de arquivo, e precisa ser fechado para liberar esses recursos corretamente. Além disso, ao fechar um arquivo, todas as operações de leitura e escrita pendentes são finalizadas e os dados são garantidamente gravados no disco.

### detalhes

- **liberação de recursos**: fechar o arquivo libera os recursos do sistema operacional associados a ele. Se um arquivo permanecer aberto por muito tempo, especialmente em grandes aplicações, isso pode resultar em esgotamento de descritores de arquivo, levando a erros;

- **garantia de gravação completa**: para arquivos abertos para escrita, o método `close()` assegura que qualquer dado pendente seja gravado corretamente no disco. Se o arquivo não for fechado após a escrita, algumas mudanças podem não ser aplicadas (especialmente se os dados estiverem armazenados em buffers temporários);

- **após fechar o arquivo**: uma vez que o arquivo é fechado, não é possível realizar mais operações de leitura ou escrita até que ele seja reaberto;

### exemplo

```python
# abrindo um arquivo para escrita
arquivo = open('exemplo.txt', 'w')

# escrevendo dados no arquivo
arquivo.write("Este é um exemplo de uso do método close.\n")

# fechando o arquivo após a escrita
arquivo.close()
```

Aqui :
- o arquivo `exemplo.txt` foi aberto no modo de escrita (`'w'`);
- foi escrita uma linha de texto no arquivo;
- foi usado o método `arquivo.close()` para fechar o arquivo e garantir que os dados sejam salvos corretamente;

### efeitos de não fechar o arquivo

Se o método `close()` não for usado, pode causar problemas em certos cenários :

1. **dados não gravados** : no caso de operações de escrita, se o arquivo não for fechado, o python pode não gravar os dados imediatamente no arquivo físico; isso ocorre porque os sistemas operacionais frequentemente armazenam dados temporariamente em um buffer para otimizar o desempenho. o `close()` força a gravação final desses dados no disco.

Exemplo :

```python
arquivo = open('exemplo.txt', 'w')
arquivo.write("Texto sem fechar o arquivo.")
# Sem o close(), o texto pode não ser gravado completamente no arquivo.
```

2. **vazamento de recursos** : não fechar um arquivo pode levar a um vazamento de descritores de arquivo, especialmente em sistemas que têm um limite sobre o número de arquivos que podem ser abertos simultaneamente; isso pode resultar em erros ao tentar abrir novos arquivos.

3. **erros ao tentar acessar um arquivo já fechado** : se tentar ler ou escrever em um arquivo após tê-lo fechado, o python gerará um erro.

Exemplo :

```python
arquivo = open('exemplo.txt', 'r')
arquivo.close()
conteudo = arquivo.read()  # Tentativa de ler após fechar o arquivo
```

O Python levantará um erro `ValueError` :

```
ValueError: I/O operation on closed file.
```

### importância de `close()` com grandes volumes de dados

Quando trabalha com arquivos grandes ou abre muitos arquivos em sequência, o fechamento adequado dos arquivos torna-se ainda mais crítico. Manter arquivos abertos sem fechá-los pode resultar em erros como:

- **`OSError: Too many open files`** : se muitos arquivos forem abertos ao mesmo tempo sem serem fechados, o sistema pode esgotar seu limite de descritores de arquivo, o que gera este erro; fechar os arquivos conforme eles são usados ajuda a evitar esse problema.


## exercícios

<details>
<summary>Lista de Exercícios</summary>

1. exercícios sobre o método `read()`
    1. Abra um arquivo de texto chamado `dados.txt` e use o método `read()` para ler todo o conteúdo. Exiba o conteúdo no terminal.
    1. Crie um arquivo chamado `historico.txt`, escreva nele cinco frases e leia todo o conteúdo usando `read()`. Exiba as frases lidas.
    1. Abra o arquivo `historico.txt` e leia os primeiros 20 caracteres do arquivo usando `read()`. Exiba os caracteres no terminal.
    1. Crie um arquivo `poema.txt` com três estrofes de um poema. Use `read()` para ler todo o poema e exibi-lo no terminal.
    1. Crie um programa que abre o arquivo `numeros.txt` e usa `read()` para ler todo o conteúdo. Depois, converta o texto em uma lista de inteiros.
    1. Abra o arquivo `paragrafo.txt` contendo um parágrafo de texto e leia os primeiros 50 caracteres com `read()`.
    1. Crie um arquivo `livro.txt` contendo três capítulos de um livro. Leia o primeiro capítulo (considerando 1000 caracteres) com o método `read()`.
    1. Escreva um programa que lê o conteúdo completo de um arquivo `mensagem.txt` e conta o número de palavras usando `read()`.
    1. Crie um arquivo `diario.txt` e escreva 5 entradas de diário. Depois, leia e exiba as duas primeiras entradas (aproximadamente 100 caracteres) usando `read()`.
    1. Crie um arquivo `contos.txt` e escreva dois contos curtos. Use o método `read()` para ler o primeiro conto (aproximadamente 500 caracteres).
1. exercícios sobre o método `readline()`
    1. Crie um arquivo `compras.txt` com uma lista de compras (uma por linha). Leia e exiba a primeira linha usando o método `readline()`.
    1. Abra o arquivo `compras.txt` e use `readline()` para ler e exibir as três primeiras linhas.
    1. Crie um programa que abra o arquivo `agenda.txt` e use `readline()` para ler cada linha individualmente, mostrando o conteúdo no terminal.
    1. Abra o arquivo `alunos.txt`, que contém o nome de 10 alunos, e leia o nome do primeiro aluno usando `readline()`.
    1. Crie um programa que abra o arquivo `mensagens.txt` e leia cada linha usando um loop `while` até o final do arquivo, exibindo cada mensagem no terminal.
    1. Abra o arquivo `livros.txt` contendo uma lista de livros. Use `readline()` para ler e exibir o título do segundo livro.
    1. Crie um arquivo `tarefas.txt` com 5 tarefas diárias. Use `readline()` para ler e exibir todas as tarefas uma a uma em um loop.
    1. Crie um programa que leia as primeiras três linhas de um arquivo `nomes.txt` e exiba os nomes no terminal.
    1. Abra um arquivo `frases.txt` e leia frases usando `readline()`. Exiba apenas as frases que contêm mais de 50 caracteres.
    1. Crie um programa que leia um arquivo `receitas.txt` e use `readline()` para exibir uma receita de cada vez.
1. exercícios sobre o método `readlines()`
    1. Abra um arquivo `notas.txt` contendo as notas de 10 alunos, uma por linha. Use `readlines()` para ler todas as linhas de uma vez e exiba-as como uma lista.
    1. Crie um arquivo `filmes.txt` com 5 títulos de filmes, um por linha. Use `readlines()` para ler e exibir todos os títulos no terminal.
    1. Abra o arquivo `tarefas.txt`, use `readlines()` para ler todas as tarefas de uma vez e exiba a terceira tarefa da lista.
    1. Crie um arquivo `produtos.txt` com uma lista de produtos. Use `readlines()` para ler todos os produtos e depois exiba-os em ordem reversa.
    1. Escreva um programa que abre um arquivo `frases.txt`, leia todas as frases com `readlines()` e exiba apenas as frases que têm mais de 20 caracteres.
    1. Crie um arquivo `contatos.txt` com nomes e números de telefone, um por linha. Use `readlines()` para armazenar os contatos em uma lista.
    1. Abra o arquivo `livros.txt`, leia todas as linhas com `readlines()` e exiba o número total de linhas lidas.
    1. Crie um arquivo `dicionario.txt` com palavras e seus significados, uma por linha. Use `readlines()` para ler todas as palavras e exibi-las em formato de lista.
    1. Abra um arquivo `amigos.txt` e use `readlines()` para ler todos os nomes. Em seguida, exiba o primeiro e o último nome da lista.
    1. Crie um programa que leia todas as linhas de um arquivo `dados.txt` com `readlines()` e armazene-as em uma lista. Em seguida, itere sobre a lista e exiba cada linha com seu número de linha correspondente.
1. exercícios sobre o método `write()`
    1. Crie um arquivo `saida.txt` e escreva a frase "Python é incrível!" usando o método `write()`.
    1. Crie um programa que abre ou cria um arquivo `registro.txt` e usa o método `write()` para adicionar a frase "Registro de atividades".
    1. Escreva um programa que crie um arquivo `numeros.txt` e adicione os números de 1 a 10, cada número em uma linha, usando o método `write()`.
    1. Crie um arquivo `diario.txt` e use `write()` para adicionar uma entrada de diário contendo a data e um texto qualquer.
    1. Abra ou crie um arquivo `notas.txt` e escreva as notas de três matérias usando o método `write()`.
    1. Crie um arquivo `tarefa.txt` e use `write()` para adicionar três tarefas diárias. Certifique-se de usar `\n` para separar as tarefas em linhas diferentes.
    1. Abra o arquivo `mensagem.txt` e use `write()` para sobrescrever seu conteúdo com a frase "Novo conteúdo escrito com write()".
    1. Crie um arquivo `historico.txt` e use `write()` para registrar o histórico de eventos, escrevendo uma nova linha a cada execução.
    1. Escreva um programa que abra um arquivo `log.txt` e use `write()` para registrar a hora atual do sistema a cada execução do programa.
    1. Crie um arquivo `lista_de_compras.txt` e use o método `write()` para adicionar 5 itens de compras. Cada item deve estar em uma linha separada.
1. Exercícios sobre o Método `writelines()`
    1. Crie um arquivo `nomes.txt` e use o método `writelines()` para escrever uma lista de nomes (cada nome em uma linha).
    1. Crie um arquivo `numeros.txt` e use `writelines()` para escrever os números de 1 a 10, cada um em uma linha separada.
    1. Crie um programa que abre ou cria um arquivo `agenda.txt` e usa `writelines()` para adicionar três compromissos, cada um em uma linha.
    1. Crie um arquivo `tarefas.txt` e use `writelines()` para adicionar cinco tarefas de uma lista, cada tarefa em uma linha separada.
    1. Escreva um programa que cria ou abre um arquivo `cidades.txt` e usa `writelines()` para adicionar o nome de três cidades, cada uma em uma linha.
    1. Crie um arquivo `frutas.txt` e use `writelines()` para adicionar o nome de cinco frutas em uma lista, cada nome em uma linha.
    1. Abra ou crie um arquivo `enderecos.txt` e use `writelines()` para adicionar três endereços, cada um em uma linha.
    1. Escreva um programa que cria um arquivo `historico.txt` e usa `writelines()` para adicionar três eventos, cada evento em uma linha separada.
    1. Crie um programa que abre o arquivo `receitas.txt` e usa `writelines()` para adicionar três receitas, cada receita em uma linha separada.
    1. Crie um arquivo `projetos.txt` e use `writelines()` para adicionar os títulos de três projetos de uma lista, cada título em uma linha.

</details>

## `with`

O comando `with` em Python é uma forma conveniente e segura de gerenciar recursos que precisam ser abertos e fechados, como arquivos, conexões de rede ou bloqueios em threads. Quando usado com a função `open()`, ele simplifica a manipulação de arquivos, garantindo que o arquivo seja fechado automaticamente, mesmo que ocorra uma exceção durante a execução do código.

### funcionamento

O comando `with` funciona usando o **gerenciamento de contexto**, que envolve a invocação de dois métodos especiais de um objeto: `__enter__()` e `__exit__()`. O método `__enter__()` é chamado quando o bloco `with` é iniciado, e o método `__exit__()` é chamado quando o bloco `with` é encerrado, seja de forma normal ou por uma exceção. No caso de arquivos, o método `__exit__()` fecha o arquivo automaticamente.

Veja sua sintaxe :

```python
with open('arquivo.txt', 'modo') as variavel_arquivo:
    # operações de leitura ou escrita
    variavel_arquivo.write("Escrevendo algo no arquivo.")
```

- **`open('arquivo.txt', 'modo')`** : abre o arquivo `arquivo.txt` no modo especificado (por exemplo, leitura `'r'`, escrita `'w'`, etc.);
- **`as variavel_arquivo`** : atribui o objeto de arquivo a uma variável (neste caso, `variavel_arquivo`) para que se possa manipulá-lo dentro do bloco `with`;
- **bloco de código** : o código dentro do bloco `with` pode realizar operações com o arquivo; após o final do bloco, o arquivo é fechado automaticamente;

### vantagens

O camando `with` tem algumas vantagens quando se trabalha com arquivos :

1. **gerenciamento automático de recursos** : o `with` garante que o arquivo seja fechado corretamente, mesmo que haja um erro ou exceção dentro do bloco de código;
2. **código mais conciso e legível** : não é necessário chamar `arquivo.close()`, pois isso é tratado automaticamente;

- **exemplos de `with` com `open()`**

#### leitura de um arquivo

```python
with open('exemplo.txt', 'r') as arquivo:
    conteudo = arquivo.read()
    print(conteudo)
```

Aqui :
- o arquivo `exemplo.txt` é aberto no modo de leitura (`'r'`);
- o conteúdo do arquivo é lido com `arquivo.read()`;
- ao sair do bloco `with`, o arquivo é fechado automaticamente, mesmo que ocorra um erro ao ler o conteúdo;

#### escrita em um arquivo

```python
with open('exemplo.txt', 'w') as arquivo:
    arquivo.write("Escrevendo no arquivo usando 'with'.\n")
    arquivo.write("Outra linha de exemplo.\n")
```

Neste exemplo :
- o arquivo é aberto no modo de escrita (`'w'`), e duas linhas são escritas nele;
- o arquivo será fechado automaticamente ao sair do bloco, garantindo que os dados sejam gravados corretamente;

#### leitura linha por linha:

```python
with open('exemplo.txt', 'r') as arquivo:
    for linha in arquivo:
        print(linha, end='')
```

Aqui :
- o arquivo é aberto para leitura;
- um laço `for` percorre cada linha do arquivo e a imprime;
- como o arquivo é um iterável, é possível ler linha por linha sem carregar todo o conteúdo na memória ao mesmo tempo;

<!--
### tratamento de exceções

O uso do `with` com arquivos também garante o fechamento correto mesmo que haja exceções durante a manipulação do arquivo.

Por exemplo :
```python
try:
    with open('exemplo.txt', 'r') as arquivo:
        conteudo = arquivo.read()
        # Suponha que ocorra um erro aqui
        raise ValueError("Um erro ocorreu!")
except ValueError as e:
    print(f"Erro: {e}")
```

Neste código :
- o arquivo será fechado automaticamente, mesmo que o erro ocorra durante a leitura;
- o `try-except` captura o erro, mas o recurso de fechar o arquivo continua garantido;
-->

### múltiplos arquivos com `with`

É também possível abrir múltiplos arquivos ao mesmo tempo usando um único comando `with` :

```python
with open('arquivo1.txt', 'r') as origem, open('arquivo2.txt', 'w') as destino:
    # lendo do primeiro arquivo, origem
    conteudo = origem.read()
    # alterando o conteúdo original
    conteudo += 'novo texto'
    # escrevendo no segundo arquivo, destino
    destino.write(conteudo)
```

Aqui :
- o arquivo `arquivo1.txt` é aberto no modo de leitura, e `arquivo2.txt` no modo de escrita;
- o conteúdo do primeiro arquivo é lido e escrito no segundo arquivo;
- ambos os arquivos são fechados automaticamente ao final do bloco `with`;

## exercícios com `with`

<details>
<summary>Lista de Exercícios</summary>

1. Crie um arquivo chamado `saudacao.txt` e use o comando `with` para abrir o arquivo e escrever a frase "Olá, bem-vindo ao Python!" nele. Após isso, exiba o conteúdo do arquivo no terminal.
1. Crie um arquivo `poema.txt` e use o comando `with` para escrever três estrofes de um poema. Depois, use o `with` novamente para abrir e ler o conteúdo do arquivo e exibir no terminal.
1. Escreva um programa que abra um arquivo chamado `dados.txt` usando o comando `with` e leia as primeiras 30 letras do arquivo, exibindo-as no terminal.
1. Crie um arquivo `compras.txt` com uma lista de compras. Use o comando `with` para adicionar dois novos itens no final do arquivo e depois leia todo o conteúdo, exibindo-o no terminal.
1. Crie um arquivo `log.txt` e, em um loop, registre a hora atual do sistema cinco vezes (uma vez por linha), usando o comando `with`.
1. Crie um arquivo `tarefas.txt` e adicione cinco tarefas diárias usando o comando `with`. Em seguida, leia e exiba todo o conteúdo do arquivo no terminal.
1. Escreva um programa que crie ou abra um arquivo `notas.txt` e adicione as notas de três matérias usando o comando `with`. Depois, use o `with` para abrir e ler o arquivo, exibindo as notas.
1. Crie um arquivo `frutas.txt` e use o comando `with` para escrever o nome de cinco frutas. Em seguida, leia e exiba todo o conteúdo do arquivo no terminal.
1. Escreva um programa que usa o comando `with` para criar um arquivo `mensagem.txt` e adicionar uma mensagem de boas-vindas. Depois, leia o conteúdo do arquivo e conte quantos caracteres a mensagem possui.
1. Crie um arquivo `historico.txt` e, com o uso do comando `with`, adicione três eventos históricos. Depois, leia todo o conteúdo e exiba apenas o primeiro evento.
1. Crie um arquivo `nomes.txt` com nomes de pessoas, cada um em uma linha. Use o comando `with` para ler os nomes e armazená-los em uma lista, depois exiba a lista no terminal.
1. Escreva um programa que crie um arquivo `diario.txt` e adicione uma entrada de diário com a data e um texto. Depois, use o comando `with` para exibir o conteúdo da última linha do arquivo.
1. Crie um arquivo `receitas.txt` e escreva três receitas curtas usando o comando `with`. Em seguida, use `with` novamente para ler e exibir todas as receitas.
1. Crie um arquivo `contatos.txt` e adicione três contatos (nome e telefone). Depois, use o comando `with` para ler o conteúdo e exibir apenas os números de telefone.
1. Crie um arquivo `projetos.txt` e use o comando `with` para escrever os títulos de três projetos. Depois, leia o arquivo e exiba o título do segundo projeto.
1. Crie um arquivo `endereco.txt` e escreva seu endereço completo usando o comando `with`. Em seguida, leia o arquivo e exiba o número da casa.
1. Crie um arquivo `planos.txt` e adicione três planos para o futuro. Em seguida, use o comando `with` para ler e exibir os planos, um por um.
1. Crie um arquivo `musicas.txt` e adicione o nome de cinco músicas favoritas. Depois, use o comando `with` para ler o arquivo e exibir a quantidade de músicas armazenadas.
1. Crie um arquivo `alunos.txt` e adicione o nome de cinco alunos. Em seguida, use o comando `with` para ler o arquivo e exibir todos os nomes em maiúsculas.
1. Crie um arquivo `historico_vendas.txt` e use o comando `with` para adicionar os valores de vendas de uma semana. Depois, leia o arquivo e exiba o valor total somando todas as vendas.

</details>

## encoding

O **encoding** (ou codificação) é a forma como os caracteres são convertidos em bytes para serem armazenados em arquivos ou transmitidos em redes. Quando se com arquivos de texto no Python, o **encoding** determina como o conteúdo textual será interpretado e convertido entre **strings** (internamente manipuladas como Unicode no Python) e **bytes** (armazenados em disco).

### conceito

Um **encoding** é um mapeamento entre caracteres (como letras, números e símbolos) e uma representação binária (bytes). Alguns encodings comuns incluem:

- **UTF-8** : um encoding muito usado para a web e arquivos de texto em geral. Ele usa entre 1 e 4 bytes para representar um caractere. É compatível com o ASCII (que usa 1 byte por caractere);
- **ASCII** : um encoding básico que utiliza 1 byte para representar 128 caracteres, mas não é adequado para caracteres não-ingleses ou símbolos especiais;
- **UTF-16** e **UTF-32** : usam 2 e 4 bytes, respectivamente, para representar caracteres. Esses encodings são mais compactos em representações de alguns caracteres Unicode, mas são menos comuns para arquivos de texto gerais;
- **ISO-8859-1** (ou Latin-1) : um encoding de 1 byte que representa caracteres da Europa Ocidental. Pode ser útil ao lidar com arquivos mais antigos;

### encoding ao abrir arquivos

Quando se trabalha com **arquivos de texto**, deve-se especificar o encoding correto ao abrir o arquivo para garantir que o Python leia e escreva os dados corretamente. Se o encoding não for especificado corretamente, pode resultar em erros como `UnicodeDecodeError` ou a leitura incorreta de caracteres.

### como especificar o encoding

Ao abrir arquivos de texto usando a função `open()` no Python, pode-se (e deve) especificar o encoding correto através do parâmetro `encoding`.

```python
# abrindo um arquivo com encoding específico
with open('arquivo.txt', 'r', encoding='utf-8') as arquivo:
    conteudo = arquivo.read()
    print(conteudo)
```

### principais encodings usados no Python

#### UTF-8 (padrão recomendado)

O **UTF-8** é o encoding padrão para arquivos de texto no Python moderno, especialmente se o arquivo contiver caracteres de várias línguas e scripts.

- **Exemplo** : Abrindo e escrevendo um arquivo em UTF-8.

```python
# Escrevendo em um arquivo com UTF-8
with open('arquivo_utf8.txt', 'w', encoding='utf-8') as arquivo:
    arquivo.write('Olá, Mundo!!')

# Lendo um arquivo em UTF-8
with open('arquivo_utf8.txt', 'r', encoding='utf-8') as arquivo:
    conteudo = arquivo.read()
    print(conteudo)
```

#### ISO-8859-1 (Latin-1)

O **ISO-8859-1** (também conhecido como **Latin-1**) é um encoding de 1 byte usado para representar caracteres da Europa Ocidental. Embora não suporte todos os caracteres Unicode, ele pode ser útil para arquivos mais antigos ou sistemas que não precisam de suporte para outros idiomas.

- **Exemplo** : Usando Latin-1 para abrir um arquivo.

```python
# Lendo um arquivo com encoding Latin-1
with open('arquivo_latin1.txt', 'r', encoding='iso-8859-1') as arquivo:
    conteudo = arquivo.read()
    print(conteudo)
```

#### ASCII

O **ASCII** é um encoding mais limitado, que só suporta caracteres básicos do inglês (números, letras e símbolos simples). Como só usa 1 byte por caractere, ele é útil para arquivos simples, mas inadequado para textos em outros idiomas.

- **Exemplo** : Usando o encoding ASCII.

```python
# Escrevendo e lendo um arquivo com encoding ASCII
with open('arquivo_ascii.txt', 'w', encoding='ascii') as arquivo:
    arquivo.write('Hello, World!')

with open('arquivo_ascii.txt', 'r', encoding='ascii') as arquivo:
    conteudo = arquivo.read()
    print(conteudo)
```

### problemas comuns com encoding

#### UnicodeDecodeError

Esse erro ocorre quando se tenta ler um arquivo com um encoding errado ou sem especificar o encoding corretamente.

```python
with open('arquivo_utf8.txt', 'r', encoding='ascii') as arquivo:
    conteudo = arquivo.read()  # Isso gerará um UnicodeDecodeError
```

Neste exemplo, o arquivo foi escrito usando **UTF-8**, mas estamos tentando lê-lo usando **ASCII**, que não suporta a maioria dos caracteres Unicode, resultando no erro.

#### codificação de caracteres especiais

Quando o arquivo contém caracteres que não estão no conjunto básico do encoding que se está usando, esses caracteres podem aparecer corrompidos ou resultar em erro.

```python
# Usando o encoding errado
with open('arquivo_latin1.txt', 'r', encoding='utf-8') as arquivo:
    conteudo = arquivo.read()  # Pode exibir caracteres incorretos
```

Neste caso, um arquivo em **Latin-1** está sendo lido com **UTF-8**, o que pode causar problemas na interpretação de alguns caracteres.

### definindo o encoding correto ao criar ou ler arquivos

1. **verifique o encoding do arquivo original** : se estiver lidando com arquivos que não foram criados por você, tente identificar o encoding correto. Ferramentas como editores de texto avançados ou bibliotecas externas podem ajudar a determinar isso;

2. **use sempre utf-8 para novos arquivos** : se estiver criando arquivos de texto, é recomendável sempre usar **utf-8**, pois ele é amplamente suportado e lida bem com a maioria dos caracteres;

3. **mantenha o encoding consistente** : ao escrever e ler o mesmo arquivo, use o mesmo encoding em ambas as operações; isso evita problemas de conversão incorreta de caracteres;

### exemplos

#### especificando o encoding ao escrever e ler arquivos

```python
# Escrevendo um arquivo com UTF-8
with open('mensagem.txt', 'w', encoding='utf-8') as arquivo:
    arquivo.write('Este é um texto com acentuação e caracteres especiais: ç, ã, ê.')

# Lendo o arquivo com o mesmo encoding
with open('mensagem.txt', 'r', encoding='utf-8') as arquivo:
    conteudo = arquivo.read()
    print(conteudo)
```

#### lendo um arquivo com encoding incorreto

```python
# Tentando abrir um arquivo UTF-8 com Latin-1 (resultado incorreto)
with open('mensagem.txt', 'r', encoding='iso-8859-1') as arquivo:
    conteudo = arquivo.read()  # Isso pode exibir caracteres corrompidos
    print(conteudo)
```

## exercícios encoding

<details>
<summary>Lista de Exercícios</summary>

1. Exercícios de Arquivos de Texto com Encoding
    1. Escreva um arquivo de texto `mensagem_utf8.txt` usando o encoding **UTF-8** e armazene a frase "Olá, Mundo!". Em seguida, leia o arquivo e exiba o conteúdo no terminal.
    1. Crie um arquivo de texto `mensagem_ascii.txt` usando o encoding **ASCII** e armazene a frase "Hello, World!". Depois, tente ler esse arquivo com o encoding **UTF-8** e observe o que acontece.
    1. Escreva um arquivo `caracteres_especiais.txt` em **ISO-8859-1** e armazene uma frase com caracteres especiais, como "Ação, Café, São Paulo". Em seguida, leia o arquivo com o encoding correto e exiba a frase.
    1. Escreva um arquivo `frase_latin1.txt` usando **ISO-8859-1** e armazene uma frase em português com acentuação. Leia o arquivo com **UTF-8** e veja o resultado. Depois, corrija o encoding e leia novamente.
    1. Crie um arquivo `nomes_utf16.txt` usando o encoding **UTF-16** e armazene os nomes "Alice", "Bob" e "Carlos". Leia o arquivo com o encoding **UTF-16** e exiba os nomes no terminal.
    1. Abra o arquivo `nomes_utf16.txt` com o encoding **UTF-8** e veja o que acontece. Em seguida, corrija o código para usar o encoding correto e leia os nomes novamente.
    1. Escreva um arquivo de texto `alfabeto.txt` em **ASCII** e armazene o alfabeto de A a Z. Leia o arquivo e exiba o conteúdo no terminal.
    1. Crie um arquivo `numeros.txt` com o encoding **UTF-8** e armazene os números de 1 a 10, cada número em uma linha. Em seguida, leia o arquivo e exiba os números.
    1. Crie um arquivo `frase_utf32.txt` com o encoding **UTF-32** e armazene a frase "Python é divertido!". Leia o arquivo com o encoding correto e exiba o conteúdo.
    1. Escreva um arquivo `mistura.txt` com o encoding **UTF-8** e armazene uma combinação de caracteres de diferentes idiomas (por exemplo, "Olá", "你好", "Hello"). Leia o arquivo e exiba o conteúdo.
1. Exercícios de Arquivos JSON com Encoding
    1. Crie um dicionário Python com informações sobre uma pessoa (nome, idade, cidade). Salve-o em um arquivo JSON `pessoa.json` com o encoding **UTF-8**.
    1. Leia o arquivo `pessoa.json` criado no exercício anterior, decodificando-o com **UTF-8**, e exiba as informações da pessoa.
    1. Crie um dicionário contendo uma lista de frutas e seus preços. Salve o dicionário em um arquivo JSON `frutas.json` com o encoding **ISO-8859-1**.
    1. Abra o arquivo `frutas.json` com o encoding **ISO-8859-1** e leia o conteúdo, exibindo a lista de frutas e preços no terminal.
    1. Crie um arquivo JSON `dados_usuarios.json` com uma lista de dicionários, onde cada dicionário representa um usuário com as chaves: "nome", "idade", "email". Escreva o arquivo usando **UTF-8**.
    1. Leia o arquivo `dados_usuarios.json` criado no exercício anterior, e exiba a lista de usuários no terminal.
    1. Crie um dicionário Python com uma lista de frases em diferentes idiomas (português, inglês, chinês). Salve o dicionário em um arquivo JSON `frases.json` com o encoding **UTF-16**.
    1. Leia o arquivo JSON `frases.json` criado no exercício anterior com o encoding **UTF-16** e exiba as frases no terminal.
    1. Crie um arquivo JSON `configuracoes.json` com configurações de sistema (por exemplo, tema, idioma, notificações). Salve o arquivo com o encoding **UTF-8**.
    1. Leia o arquivo `configuracoes.json` e atualize uma das configurações. Em seguida, salve novamente o arquivo com o mesmo encoding.

</details>
