Índice

1. [comando import](#comando-import)
1. [comandos from e as](#comandos-from-e-as)
1. [comparando as abordagens](#comparando-as-abordagens)
1. [exemplo completo](#exemplo-completo)
1. [exercícios](#execícios)

# comandos `from` `import` `as`

## comando `import`

O comando `import` em Python é usado para incluir funcionalidades de outros módulos (arquivos `.py`) em um script, permitindo a reutilização de código. Um módulo em Python é simplesmente um arquivo contendo definições e instruções Python, como funções, classes e variáveis. Ao usar `import`, é possível acessar essas definições de um módulo dentro de outro.

### estrutura básica do `import`

A sintaxe básica do comando `import` é :

```python
>>> import nome_do_modulo
```

Aqui, `nome_do_modulo` é o nome do arquivo `.py` sem a extensão. Por exemplo, se tiver um arquivo chamado `meu_modulo.py`, poderá importá-lo em outro arquivo Python com :

```python
>>> import meu_modulo
```

### como funciona o `import`

Quando um módulo é importado :

1. **localização do módulo** : o python verifica se o módulo está presente no local de trabalho atual ou nos diretórios especificados na variável `sys.path`;
2. **execução do código** : todo o código no módulo importado é executado uma vez no momento do import. Se o módulo contém funções ou classes, elas são definidas e prontas para uso no script que fez o import;
3. **criação de um namespace** : um namespace separado é criado para o módulo, o que significa que os nomes definidos no módulo não entram em conflito com os nomes no script importador;

### acessando componentes do módulo

Depois de importar um módulo, é possível acessar as funções, variáveis e outros componentes usando a notação de ponto (`.`).

- exemplo 1 : acessando funções e variáveis

Suponha que tenha um arquivo `meu_modulo.py` com o seguinte conteúdo :

```python
# meu_modulo.py
def saudacao():
    return "Olá, bem-vindo ao meu módulo!"

mensagem = "Este é um exemplo de módulo."
```

Agora, em outro arquivo Python `main.py`, pode-se fazer o seguinte :

```python
# main.py
import meu_modulo

# chamando a função saudacao() do módulo
print(f'{meu_modulo.saudacao() = }')

# acessa a variável mensagem do módulo
print(f'{meu_modulo.mensagem = }')
```

O código acima irá mostrar :

```
Olá, bem-vindo ao meu módulo!
Este é um exemplo de módulo.
```

### importando vários módulos

Pode-se importar múltiplos módulos em um único arquivo Python. Eles podem ser módulos que você criou ou módulos padrão do Python. Cada módulo importado será acessível pelo seu próprio namespace.

- exemplo 2 : importando múltiplos módulos

```python
# main.py
import meu_modulo
import outro_modulo

print(f'{meu_modulo.saudacao() = }')
print(f'{outro_modulo.outra_funcao() = }')
```

### importar módulos repetidamente

Uma vez que um módulo é importado, ele não é reexecutado se for importado novamente no mesmo programa, a menos que o programa seja reiniciado. Isso significa que o código do módulo será executado apenas na primeira vez que o `import` for chamado.

### organização do código com módulos

O uso do `import` é fundamental para organizar o código em partes menores e mais gerenciáveis. Em vez de ter um único arquivo grande, pode-se dividir funcionalidades em diferentes módulos, importando-os conforme necessário. Isso facilita a manutenção e o reuso de código.

- exemplo 3 : organização com módulos

Considere um projeto com três módulos: `matematica.py`, `mensagens.py` e `main.py`.

**arquivo : `matematica.py`**

```python
# matematica.py

def soma(a, b):
    return a + b

def subtracao(a, b):
    return a - b
```

**arquivo : `mensagens.py`**

```python
# mensagens.py

def boas_vindas():
    return "Bem-vindo ao sistema!"

def despedida():
    return "Obrigado por usar o sistema!"
```

**arquivo : `main.py`**

```python
import matematica
import mensagens

print(mensagens.boas_vindas())
resultado = matematica.soma(10, 5)
print(f'A soma é : {resultado}')
print(mensagens.despedida())
```

**saída esperada :**

```
Bem-vindo ao sistema!
A soma é : 15
Obrigado por usar o sistema!
```

## comandos `from` e `as`

O Python oferece várias maneiras de importar funcionalidades de outros módulos. Além do simples `import`, já discutido acima, é possível usar `from ... import`, `import ... as`, e `from ... import ... as` para gerenciar como as funções e variáveis são importadas e acessadas em seu código.

### `from ... import`

O comando `from ... import` é usado quando se deseja importar funções, classes ou variáveis específicas de um módulo, ao invés de importar todo o módulo. Isso é útil quando se quer evitar a importação de todo o conteúdo do módulo, especialmente se apenas precisa de alguns itens.

Veja a sintaxe :

```python
from nome_do_modulo import nome1, nome2, ...
```

Aqui, `nome_do_modulo` é o nome do módulo que se está importando, e `nome1`, `nome2`, etc., são os nomes das funções, variáveis ou classes que se deseja importar.

- exemplo 1 : importando funções específicas

Vamos supor que tenha um módulo chamado `matematica.py` com o seguinte conteúdo :

```python
# matematica.py

def soma(a, b):
    return a + b

def subtracao(a, b):
    return a - b

PI = 3.14159
```

Se quiser usar apenas a função `soma` no seu script, sem importar o restante do módulo, pode-se fazer o seguinte :

```python
from matematica import soma

resultado = soma(10, 5)
print(resultado)  # saída : 15
```

Neste caso, apenas a função `soma` foi importada. Se tentar usar `subtracao` ou `PI`, receberá um erro, pois eles não foram importados.

- exemplo 2: importando múltiplos itens

Também é possível importar várias funções e variáveis ao mesmo tempo :

```python
from matematica import soma, subtracao, PI

print(soma(10, 5))        # saída : 15
print(subtracao(10, 5))   # saída : 5
print(PI)                 # saída : 3.14159
```

### `import ... as`

O comando `import ... as` permite que importe um módulo e, ao mesmo tempo, atribua a ele um alias (ou pseudônimo). Isso é útil para encurtar o nome de um módulo ou para evitar conflitos de nomes quando dois módulos têm o mesmo nome.

Veja a sintaxe abaixo :

```python
import nome_do_modulo as alias
```

Aqui, `nome_do_modulo` é o nome do módulo que está importando, e `alias` é o nome que deseja usar para se referir ao módulo no código.

- exemplo 3 : usando alias para módulos

Vamos dizer exista um módulo chamado `calculadora.py` :

```python
# calculadora.py

def multiplicacao(a, b):
    return a * b

def divisao(a, b):
    if b != 0:
        return a / b
    else:
        return "Divisão por zero não é permitida"
```

Se o nome do módulo for longo, ou se quiser evitar conflitos de nomes, pode importá-lo com um alias :

```python
import calculadora as calc

resultado = calc.multiplicacao(6, 7)
print(resultado)  # saída : 42
```

Agora, pode-se usar `calc` em vez de `calculadora` para acessar as funções dentro desse módulo.

### `from ... import ... as`

O comando `from ... import ... as` combina as funcionalidades de `from ... import` e `import ... as`. Ele permite que se importe itens específicos de um módulo e lhes atribua novos nomes (alias) dentro do seu código.

Veja a sintaxe abaixo :

```python
from nome_do_modulo import nome as alias
```

Aqui, `nome_do_modulo` é o nome do módulo de onde se está importando, `nome` é a função, variável ou classe que se deseja importar, e `alias` é o novo nome que se deseja usar para referenciar esse item.

- exemplo 4 : usando alias para funções específicas

Voltando ao módulo `matematica.py` :

```python
from matematica import soma as adicionar

resultado = adicionar(10, 20)
print(resultado)  # saída : 30
```

Aqui, a função `soma` foi importada com o nome `adicionar`. Dentro do script, deve-se usar o nome `adicionar` para referir-se à função `soma`.

## comparando as abordagens

- **`import nome_do_modulo`** : importa todo o módulo. Deve-se usar o nome do módulo para acessar suas funções e variáveis;
- **`from nome_do_modulo import nome`** : importa apenas funções ou variáveis específicas, sem a necessidade de referenciar o módulo;
- **`import nome_do_modulo as alias`** : importa todo o módulo, mas permite que se use um nome diferente para referenciá-lo;
- **`from nome_do_modulo import nome as alias`** : importa funções ou variáveis específicas e permite que lhes atribua novos nomes;

### quando usar cada abordagem

- Use **`import nome_do_modulo`** quando precisar de várias funções ou variáveis de um módulo e não se importa em acessar essas funcionalidades usando o nome do módulo.
- Use **`from nome_do_modulo import nome`** quando você precisar de apenas algumas funcionalidades de um módulo e quer evitar a sobrecarga de importar tudo.
- Use **`import nome_do_modulo as alias`** quando o nome do módulo for muito longo ou se houver um conflito de nomes com outro módulo.
- Use **`from nome_do_modulo import nome as alias`** quando se quiser importar uma função ou variável específica e atribuir-lhe um nome que seja mais descritivo ou conveniente no contexto do código.

## exemplo completo

Vamos juntar tudo em um exemplo prático. Suponha que se tenha dois módulos: `geometria.py` e `algebra.py`.

**arquivo : `geometria.py`**

```python
# geometria.py

def area_quadrado(lado):
    return lado * lado

def area_retangulo(largura, altura):
    return largura * altura
```

**arquivo : `algebra.py`**

```python
# algebra.py

def quadrado(numero):
    return numero * numero

def raiz_quadrada(numero):
    return numero ** 0.5
```

Agora, pode-se usar as diferentes formas de `import` em um script principal:

```python
# main.py

from geometria import area_quadrado as quadrado_area
import algebra as alg

lado = 5
numero = 16

print(f"Área do quadrado: {quadrado_area(lado)}")  # Usando alias para a função de geometria
print(f"Quadrado de {lado}: {alg.quadrado(lado)}")  # Usando alias para o módulo de álgebra
print(f"Raiz quadrada de {numero}: {alg.raiz_quadrada(numero)}")
```

**Saída esperada:**

```
Área do quadrado: 25
Quadrado de 5: 25
Raiz quadrada de 16: 4.0
```

## execícios

<details>
<summary>Lista de Exercícios</summary>

1. Exercícios de `import`
    1. Crie um módulo chamado `matematica.py` que contenha funções `soma(a, b)` e `multiplicacao(a, b)`. No seu script principal, importe o módulo completo e use as funções para calcular `soma(5, 3)` e `multiplicacao(4, 6)`.
        ```python
        # main.py
        import matematica

        print(f'{matematica.soma(5, 3) = }')
        print(f'{matematica.multiplicacao(4, 6) = }')

        # matematica.py
        def soma(a, b):
            return a + b

        def multiplicacao(a, b):
            return a * b
        ```
    1. Crie um módulo chamado `utilidades.py` com uma função `menor(a, b)` e uma variável `pi`. No seu script principal, importe o módulo completo e imprima o valor de `pi` e o resultado de `menor(10, 20)`.
    1. Crie um módulo chamado `strings.py` com uma função `concatena(s1, s2)` que retorna a concatenação de duas strings. No seu script principal, importe o módulo completo e use a função para concatenar as strings `"Olá"` e `"Mundo"`.
    1. Crie um módulo chamado `calculos.py` com uma função `fatorial(n)` que retorna o fatorial de um número. No seu script principal, importe o módulo completo e calcule o fatorial de `5`.
        ```python
        # main.py
        import calculos as calc

        calc.fatorial(5)

        # calculos.py
        def fatorial(n):
            resultado = 1

            while n > 0:
                print(f'{n = }, {resultado = }')
                resultado *= n  # resultado = resultado * n
                n -= 1  # n = n - 1

            print(f'{n = }')
            print(f'{resultado = }')
        ```
    1. Crie um módulo chamado `data.py` com uma função `data_atual()` que retorna a data atual no formato `"YYYY-MM-DD"`. No seu script principal, importe o módulo completo e exiba a data atual.
        ```python
        # main.py
        import data

        print(f'{data.data_atual() = }')

        # data.py
        def data_atual():
            return "2024-09-03"
        ```
1. Exercícios de `from ... import`
    1. Crie um módulo chamado `matematica_basica.py` com funções `soma(a, b)`, `subtracao(a, b)`, e `multiplicacao(a, b)`. No seu script principal, importe apenas a função `soma` e utilize-a para somar `8` e `12`.
    1. Crie um módulo chamado `strings_avancadas.py` com funções `capitalizar(s)` e `inverter(s)`. No seu script principal, importe a função `inverter` e use-a para inverter a string `"Python"`.
    1. Crie um módulo chamado `geometria_basica.py` com funções `area_circulo(raio)` e `perimetro_quadrado(lado)`. No seu script principal, importe apenas a função `perimetro_quadrado` e calcule o perímetro de um quadrado com lado `7`.
    1. Crie um módulo chamado `algebra_basica.py` com funções `quadrado(x)` e `raiz_quadrada(x)`. No seu script principal, importe apenas a função `raiz_quadrada` e calcule a raiz quadrada de `16`.
    1. Crie um módulo chamado `conversao.py` com funções `km_para_milhas(km)` e `celsius_para_fahrenheit(celsius)`. No seu script principal, importe apenas a função `km_para_milhas` e converta `100` quilômetros para milhas.
1. Exercícios de `import ... as`
    1. Crie um módulo chamado `calculadora.py` com funções `adicao(a, b)`, `subtracao(a, b)`, e `multiplicacao(a, b)`. No seu script principal, importe o módulo usando o alias `calc` e use a função `adicao` para somar `15` e `25`.
    1. Crie um módulo chamado `convert.py` com funções `dolar_para_euro(dolares)` e `euro_para_reais(euros)`. No seu script principal, importe o módulo com o alias `conv` e converta `50` dólares para euros.
    1. Crie um módulo chamado `estatisticas.py` com funções `media(lista)` e `mediana(lista)`. No seu script principal, importe o módulo como `est` e calcule a média de `[1, 2, 3, 4, 5]`.
    1. Crie um módulo chamado `tempo.py` com funções `dias_para_horas(dias)` e `horas_para_minutos(horas)`. No seu script principal, importe o módulo com o alias `temp` e calcule o número de horas em `3` dias.
    1. Crie um módulo chamado `letras.py` com funções `contar_vogais(s)` e `contar_consoantes(s)`. No seu script principal, importe o módulo usando o alias `let` e conte o número de vogais na string `"Programação"`.
1. Exercícios de `from ... import ... as`
    1. Crie um módulo chamado `ferramentas.py` com funções `ordenar_lista(lista)` e `filtrar_lista(lista, critério)`. No seu script principal, importe `ordenar_lista` como `ordenar` e use-a para ordenar a lista `[4, 2, 9, 1]`.
    1. Crie um módulo chamado `textos.py` com funções `remover_espacos(s)` e `contar_palavras(s)`. No seu script principal, importe `contar_palavras` como `contar` e conte o número de palavras na string `"Python é divertido"`.
    1. Crie um módulo chamado `matematica_avancada.py` com funções `logaritmo(x, base)` e `potencia(base, expoente)`. No seu script principal, importe `potencia` como `exp` e calcule `2` elevado à `10`.
    1. Crie um módulo chamado `formatacao.py` com funções `formatar_data(data)` e `formatar_moeda(valor)`. No seu script principal, importe `formatar_data` como `formatar` e formate a data `"2024-09-03"`.
    1. Crie um módulo chamado `aleatorios.py` com funções `gerar_numero_aleatorio()` e `gerar_lista_aleatoria(tamanho)`. No seu script principal, importe `gerar_numero_aleatorio` como `numero_aleatorio` e gere um número aleatório.
1. Exercícios Combinados
    1. Crie um módulo chamado `financeiro.py` com funções `calcular_juros(principal, taxa, tempo)` e `calcular_investimento(principal, taxa, tempo)`. No seu script principal, importe `calcular_juros` como `juros` e `calcular_investimento` como `investimento`, e calcule o investimento inicial de `1000` com taxa de `5%` ao longo de `2` anos.
    1. Crie um módulo chamado `analise.py` com funções `media_lista(lista)` e `desvio_padrao(lista)`. No seu script principal, importe `desvio_padrao` como `desvio` e calcule o desvio padrão da lista `[2, 4, 4, 4, 5, 5, 7, 9]`.
        ```python
        # main.py
        from funcoes import desvio_padrao as desvio

        lista = [2, 4, 4, 4, 5, 5, 7, 9]
        desvio(lista)

        # analise.py
        def media_lista(lista):
            tamanho = len(lista)

            soma = 0
            for valor in lista:
                soma += valor

            media = soma / tamanho

            return media

        def desvio_padrao(lista):

            print(f'{lista = }')
            media = media_lista(lista)
            print(f'{media = }')

            difer_elem = []

            for valor in lista:
                diferenca = valor - media
                quadrado = diferenca ** 2
                difer_elem.append(quadrado)

            media_quad = media_lista(difer_elem)
            print(f'{media_quad = }')
            desvio_padrao = media_quad ** (1/2)

            print(f'o desvio da lista eh : {desvio_padrao = }')
        ```
    1. Crie um módulo chamado `comparacao.py` com funções `maior(a, b)` e `menor(a, b)`. No seu script principal, importe `menor` como `encontrar_menor` e calcule o menor entre `8` e `12`.
    1. Crie um módulo chamado `geometria.py` com funções `volume_cubo(lado)` e `volume_esfera(raio)`. No seu script principal, importe `volume_cubo` como `volume_c` e `volume_esfera` como `volume_e`, e calcule o volume de um cubo com lado `3` e uma esfera com raio `4`.
    1. Crie um módulo chamado `dados.py` com funções `criar_lista(tamanho)` e `criar_dicionario(chaves, valores)`. No seu script principal, importe `criar_lista` como `criar_lista_dados` e `criar_dicionario` como `criar_dict`, e crie uma lista com `5` elementos e um dicionário com as chaves `['a', 'b']` e valores `[1, 2]`.
    1. Crie um módulo chamado `crypto.py` com funções `criptografar(texto)` e `descriptografar(texto)`. No seu script principal, importe `criptografar` como `cripto` e `descriptografar` como `descripto`, e criptografe o texto `"Segredo"`.
    1. Crie um módulo chamado `geradores.py` com funções `gerar_username(nome)` e `gerar_senha(tamanho)`. No seu script principal, importe `gerar_username` como `username` e `gerar_senha` como `senha`, e gere um nome de usuário e uma senha de `12` caracteres.
    1. Crie um módulo chamado `contas.py` com funções `adicionar_conta(nome, valor)` e `remover_conta(nome)`. No seu script principal, importe `adicionar_conta` como `adicionar` e `remover_conta` como `remover`, e adicione uma conta chamada `"Aluguel"` com valor `1200`.
    1. Crie um módulo chamado `desenho.py` com funções `desenhar_circulo(raio)` e `desenhar_quadrado(lado)`. No seu script principal, importe `desenhar_circulo` como `circulo` e `desenhar_quadrado` como `quadrado`, e desenhe um círculo com raio `5` e um quadrado com lado `10`.
    1. Crie um módulo chamado `enderecos.py` com funções `formatar_endereco(cidade, estado)` e `validar_cep(cep)`. No seu script principal, importe `formatar_endereco` como `formatar_end` e `validar_cep` como `validar_cep`, e formate o endereço para `"São Paulo"` e `"SP"` e valide o CEP `"12345-678"`.
    1. Crie um módulo chamado `arquivos.py` com funções `ler_arquivo(caminho)` e `escrever_arquivo(caminho, conteudo)`. No seu script principal, importe `ler_arquivo` como `ler` e `escrever_arquivo` como `escrever`, e escreva o texto `"Exemplo"` em um arquivo chamado `"teste.txt"` e depois leia o conteúdo desse arquivo.
    1. Crie um módulo chamado `mensagens.py` com funções `enviar_email(remetente, destinatario, assunto, corpo)` e `enviar_sms(numero, mensagem)`. No seu script principal, importe `enviar_email` como `email` e `enviar_sms` como `sms`, e envie um e-mail para `"exemplo@dominio.com"` com o assunto `"Teste"` e uma mensagem `"Olá"`.
    1. Crie um módulo chamado `relatorios.py` com funções `gerar_relatorio(dados)` e `salvar_relatorio(caminho)`. No seu script principal, importe `gerar_relatorio` como `relatorio` e `salvar_relatorio` como `salvar`, e gere um relatório com dados `["Dados1", "Dados2"]` e salve-o no caminho `"relatorio.txt"`.
    1. Crie um módulo chamado `relogio.py` com funções `hora_atual()` e `tempo_decorrido(inicio, fim)`. No seu script principal, importe `hora_atual` como `hora` e `tempo_decorrido` como `tempo`, e exiba a hora atual e calcule o tempo decorrido entre `10` e `20`.
    1. Crie um módulo chamado `cartas.py` com funções `embaralhar_cartas()` e `distribuir_cartas(jogadores)`. No seu script principal, importe `embaralhar_cartas` como `embaralhar` e `distribuir_cartas` como `distribuir`, e embaralhe um baralho e distribua as cartas para `4` jogadores.
    1. Crie um módulo chamado `arquitetura.py` com funções `criar_plano(tipo)` e `revisar_plano(plano)`. No seu script principal, importe `criar_plano` como `plano` e `revisar_plano` como `revisar`, e crie um plano para um `"escritório"` e revise o plano.
    1. Crie um módulo chamado `conversores.py` com funções `farenheit_para_celsius(fahrenheit)` e `celsius_para_kelvin(celsius)`. No seu script principal, importe `farenheit_para_celsius` como `farenheit_celsius` e `celsius_para_kelvin` como `celsius_kelvin`, e converta `32` graus Fahrenheit para Celsius e depois para Kelvin.
    1. Crie um módulo chamado `financeiro_avancado.py` com funções `calcular_amortizacao(principal, taxa, anos)` e `calcular_juros_compostos(principal, taxa, anos)`. No seu script principal, importe `calcular_amortizacao` como `amortizacao` e `calcular_juros_compostos` como `juros_compostos`, e calcule a amortização e os juros compostos para um empréstimo de `10000` com taxa `5%` ao longo de `10` anos.
    1. Crie um módulo chamado `analises_avancadas.py` com funções `analise_temporal(dados)` e `analise_espacial(dados)`. No seu script principal, importe `analise_temporal` como `temporal` e `analise_espacial` como `espacial`, e faça uma análise temporal e espacial de um conjunto de dados fictícios.
    1. Crie um módulo chamado `crimes.py` com funções `relatar_crime(tipo, descricao)` e `consultar_crimes(local)`. No seu script principal, importe `relatar_crime` como `relatar` e `consultar_crimes` como `consultar`, e relate um crime de `"furto"` e consulte os crimes ocorridos no `"bairro"`.

</details>
