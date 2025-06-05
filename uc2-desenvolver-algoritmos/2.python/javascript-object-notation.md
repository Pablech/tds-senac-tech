Índice

1. [estrutura do json](#estrutura-do-json)
1. [json vs python](#json-vs-python)
1. [usos do json](#usos-do-json)
1. [conclusão](#conclusão)
1. [exercícios](#exercícios)

# JavaScript Object Notation

A notação JSON (JavaScript Object Notation) é um formato leve de troca de dados, muito utilizado para transmitir informações entre sistemas, especialmente em aplicações web. Ele é fácil de ler e escrever tanto por humanos quanto por máquinas. O JSON se baseia em uma coleção de pares chave-valor e em listas ordenadas de valores.

## estrutura do json

### objetos

No JSON, um objeto é uma coleção de pares de chave-valor. As chaves são strings e os valores podem ser de vários tipos: strings, números, arrays, booleanos, nulos ou até outros objetos.

Sintaxe :
- o objeto é delimitado por chaves `{ }`;
- cada chave deve estar entre aspas duplas `"`;
- chave e valor são separados por dois pontos `:`;
- os pares são separados por vírgulas `,`;

Exemplo :
```json
{
    "nome": "João",
    "idade": 30,
    "cidade": "São Paulo"
}
```

No exemplo acima :
- `"nome"` é a chave, e `"João"` é o valor (do tipo string);
- `"idade"` é a chave, e `30` é o valor (do tipo número);
- `"cidade"` é a chave, e `"São Paulo"` é o valor (do tipo string);

### arrays

Os arrays em JSON são listas ordenadas de valores. Eles são delimitados por colchetes `[ ]` e os valores são separados por vírgulas.

Sintaxe :
- o array é delimitado por colchetes `[ ]`;
- os valores dentro do array podem ser de qualquer tipo aceito pelo JSON;

Exemplo :
```json
{
    "nomes": ["Ana", "Bruno", "Carlos"],
    "idades": [25, 30, 35]
}
```

Aqui, o valor da chave `"nomes"` é um array de strings, e o valor da chave `"idades"` é um array de números.

### tipos de dados

O JSON suporta os seguintes tipos de dados:

- **String** : uma sequência de caracteres, delimitada por aspas duplas.
    ```json
    "nome": "Maria"
    ```

- **Número** : pode ser um número inteiro ou decimal (sem aspas).
    ```json
    "idade": 28
    ```

- **Booleano** : valores lógicos `true` ou `false`.
    ```json
    "casado": false
    ```

- **Nulo** : representado pela palavra-chave `null`.
    ```json
    "filhos": null
    ```

- **Objetos** : são coleções de pares chave-valor, podendo conter objetos aninhados.
    ```json
    {
        "endereco": {
        "rua": "Av. Paulista",
        "numero": 1000,
        "cidade": "São Paulo"
        }
    }
    ```

- **Arrays** : listas ordenadas de valores.
    ```json
    "cores": ["vermelho", "azul", "verde"]
    ```

### Exemplo

Abaixo há um exemplo mais complexo de um JSON que contém um objeto, arrays, e diferentes tipos de dados.

```json
{
"pessoa": {
    "nome": "Carlos",
    "idade": 40,
    "casado": true,
    "filhos": ["Pedro", "Ana"],
    "endereco": {
        "rua": "Rua das Flores",
        "numero": 123,
        "cidade": "Curitiba"
    },
    "telefones": [
        {
            "tipo": "celular",
            "numero": "99999-1234"
        },
        {
            "tipo": "residencial",
            "numero": "3333-5678"
        }
    ]
}
}
```

Explicação :
- `"pessoa"` é um objeto que contém várias informações;
- `"nome"` é uma string, `"idade"` é um número, e `"casado"` é um booleano;
- `"filhos"` é um array de strings;
- `"endereco"` é outro objeto aninhado, contendo informações de endereço;
- `"telefones"` é um array de objetos, cada um representando um tipo de telefone com seu número;

## json vs python

### tipos compatíveis

O Python e o JSON tem vários dados que são compatíveis entre si.

Abaixo há uma tabela comparativa entre os tipos de dados no JSON e suas correspondências no Python :

| Tipo de Dado JSON | Equivalente em Python | Descrição |
|-------------------|-----------------------|-----------|
| **Objeto**         | `dict`                | No JSON, um objeto é uma coleção de pares chave-valor. No Python, o equivalente é o dicionário (`dict`), onde as chaves podem ser strings (ou outros tipos imutáveis) e os valores podem ser de qualquer tipo. |
| **Array**          | `list`                | Um array em JSON é uma lista ordenada de valores. Em Python, o equivalente é a lista (`list`), que também é ordenada e permite armazenar valores de tipos variados. |
| **String**         | `str`                 | Em ambos, uma string é uma sequência de caracteres delimitada por aspas duplas no JSON e aspas simples ou duplas no Python. |
| **Número**         | `int` ou `float`      | No JSON, números podem ser inteiros ou decimais. No Python, inteiros são representados por `int` e decimais por `float`. |
| **Booleano**       | `bool`                | No JSON, booleanos são representados como `true` ou `false`. Em Python, os valores equivalentes são `True` e `False` (note a diferença na capitalização). |
| **Nulo**           | `None`                | No JSON, o valor nulo é representado por `null`. Em Python, o valor equivalente é `None`. |

#### exemplos

- JSON :
    ```json
    {
        "nome": "João",
        "idade": 25,
        "casado": false,
        "filhos": [
            "Ana",
            "Pedro"
        ],
        "endereco": null
    }
    ```

- Python :
    ```python
    {
        "nome": "João",
        "idade": 25,
        "casado": False,
        "filhos": [
            "Ana",
            "Pedro"
        ],
        "endereco": None
    }
    ```

### tipos incompatíveis

Nem todos os tipos de dados disponíveis no Python são suportados diretamente no JSON.

Abaixo está uma tabela comparativa mostrando alguns dos principais tipos de dados do Python que não têm um equivalente direto no JSON :

| Tipo de Dado Python | Suportado no JSON? | Explicação |
|---------------------|--------------------|------------|
| **`tuple`**          | Não                | Em Python, uma `tuple` é uma sequência imutável de valores. JSON não tem suporte para tipos imutáveis; o mais próximo seria um array (lista), que é mutável. |
| **`set`**            | Não                | O `set` é uma coleção não ordenada e sem valores duplicados. JSON não tem suporte para coleções não ordenadas. Se necessário, um `set` pode ser convertido em uma lista (array) antes de ser serializado em JSON. |
| **`complex`**        | Não                | O tipo `complex` em Python representa números complexos (com parte real e imaginária). JSON não tem suporte para números complexos; apenas números inteiros e de ponto flutuante são permitidos. |
| **`bytes`**          | Não                | O tipo `bytes` em Python é utilizado para representar dados binários. JSON suporta apenas strings de texto (UTF-8), e não dados binários. Para serializar dados binários, `bytes` precisam ser convertidos para uma string codificada, como Base64. |
| **`frozenset`**      | Não                | Um `frozenset` é um conjunto imutável em Python, mas como o JSON não suporta conjuntos nem mutáveis nem imutáveis, esse tipo não pode ser representado diretamente. |
| **Função (`function`)** | Não            | Funções (e outros tipos de objetos executáveis) não podem ser representados em JSON. JSON é apenas um formato de dados e não suporta lógica ou comportamento. |
| **Objeto personalizado** | Não            | Objetos de classes personalizadas em Python não são suportados diretamente no JSON. Para serem serializados, esses objetos precisam ser convertidos manualmente para dicionários (`dict`) ou outro tipo suportado. |

#### explicações

- **Tuplas** (`tuple`): Tuplas são semelhantes a listas, mas são imutáveis em Python. JSON não tem um conceito de imutabilidade, então só suportaria uma conversão para um array.

    Exemplo de conversão:
    ```python
    tuple_python = (1, 2, 3)
    list_json = [1, 2, 3]  # Após conversão para JSON
    ```

- **Conjuntos** (`set`): Como um conjunto não é ordenado e não permite duplicatas, não há equivalente em JSON. Um `set` precisa ser transformado em uma lista para ser serializado.

    Exemplo de conversão:
    ```python
    set_python = {1, 2, 3}
    list_json = [1, 2, 3]  # Após conversão para JSON
    ```

- **Números complexos** (`complex`): JSON não possui suporte para números complexos (aqueles com parte real e imaginária). Se necessário, teria que serializá-los como uma string ou objeto.

    Exemplo:
    ```python
    complex_python = 1 + 2j
    string_json = "1 + 2j"  # Após conversão para JSON como string
    ```

- **Bytes** (`bytes`): JSON só suporta strings de texto. Para serializar dados binários, é comum convertê-los em uma string codificada (por exemplo, Base64).

    Exemplo de conversão:
    ```python
    bytes_python = b'hello'
    base64_string_json = "aGVsbG8="  # Após conversão para Base64
    ```

- **Objetos personalizados**: Objetos de classes personalizadas não são serializáveis diretamente. Normalmente, você precisa definir como serializar um objeto (por exemplo, convertendo-o para um dicionário).

    Exemplo de conversão:
    ```python
    class Pessoa:
        def __init__(self, nome, idade):
            self.nome = nome
            self.idade = idade
        def para_dict(self):
            """ Método para converter a instância em um dicionário """
            return {'nome': self.nome, 'idade': self.idade}

    pessoa = Pessoa("João", 30)
    json_pessoa = pessoa.para_dict()
    print(dict_json)
    # saída : {"nome": "João", "idade": 30}
    ```

## usos do json

O JSON é amplamente utilizado para comunicação entre programas e scripts porque é um formato leve, legível e fácil de serializar e desserializar em praticamente qualquer linguagem de programação.

### comunicação entre dois scripts python via arquivo json

- **script 1**: escrevendo dados em um arquivo JSON

    Este script gera um objeto Python e o salva em um arquivo JSON para ser usado por outro script.

    ```python
    import json

    # dicionário Python
    dados = {
        "nome": "Carlos",
        "idade": 28,
        "cidade": "São Paulo",
        "habilidades": ["Python", "Java", "SQL"]
    }

    # escrevendo os dados em um arquivo JSON
    with open('dados.json', 'w') as arquivo_json:
        json.dump(dados, arquivo_json)

    print("Dados salvos no arquivo dados.json")
    ```

- **script 2** : lendo dados do arquivo JSON

    Este script lê o arquivo `dados.json` gerado pelo primeiro script e imprime as informações.

    ```python
    import json

    # lendo os dados do arquivo JSON
    with open('dados.json', 'r') as arquivo_json:
        dados = json.load(arquivo_json)

    print("Dados lidos do arquivo JSON:")
    print(dados)

    # acessando os dados individualmente
    print("Nome:", dados['nome'])
    print("Idade:", dados['idade'])
    print("Cidade:", dados['cidade'])
    print("Habilidades:", dados['habilidades'])
    ```

### comunicação entre um script python e uma api restful (via json)

Muitas APIs utilizam JSON para enviar e receber dados. Abaixo está um exemplo de um script Python que faz uma requisição POST para uma API simulada e envia dados no formato JSON.

- **exemplo** : enviando dados para uma api via json

    ```python
    import requests
    import json

    # dados a serem enviados para a API
    dados = {
        "nome": "João",
        "email": "joao@example.com",
        "senha": "senha123"
    }

    # URL da API simulada
    url = 'https://exemplo-api.com/cadastro'

    # enviando os dados para a API via POST
    response = requests.post(url, json=dados)

    # exibindo a resposta da API
    print("Status Code:", response.status_code)
    print("Resposta da API:", response.json())
    ```

### comunicação entre python e javascript (por meio de json)

Quando uma página da web utiliza JavaScript para se comunicar com o backend, o formato JSON é frequentemente utilizado para enviar e receber dados entre o frontend (JavaScript) e o backend (Python, por exemplo, usando Flask ou Django).

- backend em python (usando flask)

    ```python
    from flask import Flask, request, jsonify

    app = Flask(__name__)

    # Endpoint que recebe um JSON e responde com outro JSON
    @app.route('/dados', methods=['POST'])
    def receber_dados():
        dados_recebidos = request.json
        print("Dados recebidos:", dados_recebidos)

        # Respondendo com um JSON de confirmação
        resposta = {
            "status": "sucesso",
            "mensagem": "Dados recebidos com sucesso!",
            "dados": dados_recebidos
        }
        return jsonify(resposta)

    if __name__ == '__main__':
        app.run(debug=True)
    ```

- frontend em javascript

    ```html
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Comunicação via JSON</title>
    </head>
    <body>

    <script>
        // Dados a serem enviados para o backend
        const dados = {
            nome: "Maria",
            idade: 30,
            cidade: "Rio de Janeiro"
        };

        // Enviando os dados via POST usando Fetch API
        fetch('http://localhost:5000/dados', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(dados)
        })
        .then(response => response.json())
        .then(data => console.log("Resposta do servidor:", data))
        .catch(error => console.error("Erro:", error));
    </script>

    </body>
    </html>
    ```

### comunicação entre python e outra linguagem (ex: c#)

Você pode utilizar JSON para comunicar scripts Python com programas escritos em outras linguagens, como C#. Vamos ver como podemos usar isso em um cenário onde Python gera um arquivo JSON, e um programa em C# lê esses dados.

- Python gerando um arquivo JSON

    ```python
    import json

    # Dicionário Python
    dados = {
        "usuario": "Ana",
        "pontuacao": 4500,
        "nivel": 5
    }

    # Salvando os dados em um arquivo JSON
    with open('dados_jogo.json', 'w') as arquivo_json:
        json.dump(dados, arquivo_json)

    print("Dados do jogo salvos no arquivo dados_jogo.json")
    ```

- C# lendo o arquivo JSON gerado pelo Python

    Este programa em C# lê os dados do arquivo JSON gerado pelo script Python.

    ```csharp
    using System;
    using System.IO;
    using Newtonsoft.Json.Linq; // Instalar a biblioteca Newtonsoft.Json via NuGet

    class Program
    {
        static void Main()
        {
            // Lendo o arquivo JSON
            string json = File.ReadAllText("dados_jogo.json");

            // Convertendo para um objeto JObject
            JObject dados = JObject.Parse(json);

            // Acessando os valores no JSON
            string usuario = dados["usuario"].ToString();
            int pontuacao = int.Parse(dados["pontuacao"].ToString());
            int nivel = int.Parse(dados["nivel"].ToString());

            // Exibindo os dados lidos
            Console.WriteLine($"Usuário: {usuario}");
            Console.WriteLine($"Pontuação: {pontuacao}");
            Console.WriteLine($"Nível: {nivel}");
        }
    }
    ```

### comunicação entre dois scripts python via rede (sockets) com json

- Script 1 (Servidor) : recebendo dados em formato JSON

    ```python
    import socket
    import json

    # Configurando o servidor
    host = 'localhost'
    port = 5000

    servidor_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    servidor_socket.bind((host, port))
    servidor_socket.listen(1)

    print("Servidor aguardando conexão...")

    # Aguardando conexão
    conexao, endereco = servidor_socket.accept()
    print(f"Conectado por {endereco}")

    # Recebendo dados
    dados_recebidos = conexao.recv(1024).decode()
    json_data = json.loads(dados_recebidos)
    print("Dados recebidos:", json_data)

    # Fechando a conexão
    conexao.close()
    ```

- Script 2 (Cliente) : enviando dados em formato JSON

    ```python
    import socket
    import json

    # Configurando o cliente
    host = 'localhost'
    port = 5000

    cliente_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    cliente_socket.connect((host, port))

    # Dados a serem enviados
    dados = {
        "nome": "Alice",
        "idade": 27,
        "cidade": "Brasília"
    }

    # Convertendo para JSON e enviando
    json_data = json.dumps(dados)
    cliente_socket.send(json_data.encode())

    # Fechando a conexão
    cliente_socket.close()
    ```

## conclusão

O JSON é uma ferramenta extremamente útil para a comunicação entre diferentes programas, scripts, linguagens de programação, e até mesmo diferentes sistemas via rede ou APIs. O formato simples e flexível do JSON facilita a troca de informações e dados, tanto em cenários locais quanto distribuídos.

## exercícios

<details>
<summary>Lista de Exercícios</summary>

### dicas

- **Serializar (Python → JSON)** : Em Python, pode-se usar o método `json.dumps()` para converter objetos Python em strings JSON e `json.dump()` para gravar em arquivos JSON;

- **Desserializar (JSON → Python)** : para converter JSON em objetos Python, use `json.loads()` para strings e `json.load()` para ler de arquivos JSON;

1. Exercícios de Conversão de Objetos Python para JSON
    1. Converta um dicionário Python simples contendo as informações de um produto (nome, preço, quantidade) em JSON.
    1. Crie uma lista de frutas em Python e converta-a para JSON.
    1. Converta uma tupla de números (1, 2, 3, 4, 5) em JSON.
    1. Crie um dicionário Python com os dados de um estudante (nome, idade, notas) e salve-o em um arquivo JSON.
    1. Converta uma lista de dicionários, onde cada dicionário representa um livro (título, autor, ano), em JSON.
    1. Crie um conjunto (`set`) em Python contendo valores únicos e converta-o para JSON. Observe o comportamento e justifique a saída.
    1. Converta um dicionário aninhado que contenha os detalhes de um evento (nome do evento, data, lista de participantes) para JSON.
    1. Crie um objeto Python que contém uma chave com valor `None` e converta-o em JSON.
    1. Converta uma lista de números inteiros e números de ponto flutuante para JSON e salve-a em um arquivo.
    1. Crie um dicionário que contenha uma lista de endereços de e-mail e números de telefone, e converta-o para JSON.
    1. Converta uma lista de strings representando cores em JSON.
    1. Crie um dicionário com tipos de dados mistos (inteiro, string, booleano, lista) e converta-o para JSON.
    1. Crie um objeto Python com uma chave contendo um booleano (`True` ou `False`) e converta-o para JSON.
    1. Converta um objeto Python com um valor booleano `True` para JSON e observe como ele é representado.
    1. Crie um dicionário em Python contendo dados pessoais (nome, idade, endereço) e salve-o em um arquivo JSON.
    1. Converta um dicionário que contenha dados de um veículo (marca, modelo, ano) em uma string JSON.
    1. Crie um objeto Python com chaves que contenham listas aninhadas e converta-o para JSON.
    1. Crie uma lista de números pares de 0 a 20 em Python e converta-a para JSON.
    1. Converta um objeto Python com uma chave contendo um valor booleano `False` para JSON.
    1. Crie um objeto Python com um valor complexo, como `1 + 2j`, e converta-o para JSON, tratando o valor complexo de forma apropriada.
1. Exercícios de Conversão de JSON para Objetos Python
    1. Carregue um arquivo JSON contendo informações de um cliente (nome, idade, endereço) e converta-o em um dicionário Python.
    1. Converta uma string JSON representando uma lista de números inteiros em uma lista Python.
    1. Dada uma string JSON que representa um dicionário com pares chave-valor de um produto, converta-a em um dicionário Python.
    1. Carregue uma string JSON contendo uma lista de frutas e converta-a para uma lista Python.
    1. Converta uma string JSON contendo um dicionário aninhado que representa as notas de um aluno em um objeto Python.
    1. Leia um arquivo JSON que contém uma lista de objetos e converta cada objeto em um dicionário Python.
    1. Dada uma string JSON que representa um objeto com valores booleanos, converta-a para um dicionário Python.
    1. Carregue uma string JSON contendo uma lista de strings (nomes de cidades) e converta-a em uma lista Python.
    1. Converta uma string JSON que contém um valor booleano `true` para seu equivalente Python.
    1. Leia um arquivo JSON contendo uma lista de números de ponto flutuante e converta-o em uma lista Python.
    1. Dada uma string JSON que contém dados de um usuário (nome, idade, endereço), converta-a em um dicionário Python e acesse os valores.
    1. Carregue uma string JSON que contém um valor `null` e converta-o em seu equivalente Python (`None`).
    1. Converta uma string JSON que representa um array (lista) de números pares em uma lista Python.
    1. Dada uma string JSON que contém um dicionário com informações de um filme (título, diretor, ano), converta-a em um dicionário Python.
    1. Carregue uma string JSON que contém um dicionário com uma lista de hobbies e converta-a para um dicionário Python.
    1. Dada uma string JSON que contém uma lista de dicionários com dados de várias pessoas (nome, idade), converta-a em uma lista de dicionários Python.
    1. Converta uma string JSON que contém um dicionário com dados de um evento (nome, data, local) em um dicionário Python.
    1. Carregue uma string JSON que contém uma lista aninhada e converta-a em uma lista Python.
    1. Converta uma string JSON que contém um objeto com múltiplos tipos de dados (string, inteiro, booleano) em um dicionário Python.
    1. Leia um arquivo JSON que contém uma estrutura de dados complexa (listas aninhadas, dicionários) e converta-o em um objeto Python.

</details>
