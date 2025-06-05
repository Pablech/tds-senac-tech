# `requests`

O módulo `requests` é uma biblioteca poderosa e fácil de usar para **fazer requisições HTTP** em Python. Ele permite interagir com APIs, baixar conteúdo da web e enviar dados para servidores de forma simples.

## Instalação

Diferente de outros módulos do Python, é preciso realizar a instalação do módulo `requests`.

```bash
pip install requests
```

## Conceito Básico

O `requests` permite enviar diferentes tipos de requisições HTTP, como:

* `GET` – Buscar dados
* `POST` – Enviar dados (formulários, JSON)
* `PUT` – Atualizar dados
* `DELETE` – Deletar recursos
* `HEAD`, `OPTIONS`, etc.

## Requisição GET

Serve para buscar informações de um site ou API.

```python
import requests

response = requests.get('https://api.github.com')

print(response.status_code)      # Código de status HTTP
print(response.headers['Content-Type'])  # Cabeçalho
print(response.text)             # Conteúdo bruto (str)
print(response.json())           # Conteúdo em JSON (dict)
```

## Requisição POST

Serve para enviar dados para uma API (formulários, JSON, etc.)

```python
import requests

url = 'https://httpbin.org/post'
data = {'usuario': 'joao', 'senha': '1234'}

response = requests.post(url, data=data)

print(response.status_code)
print(response.json())
```

## Enviando JSON

```python
import requests

url = 'https://httpbin.org/post'
json_data = {'produto': 'livro', 'preco': 29.90}

response = requests.post(url, json=json_data)

print(response.json()['json'])  # Acessando o JSON enviado
```

## Parâmetros na URL (`params`)

```python
payload = {'busca': 'python', 'limite': 5}

r = requests.get('https://httpbin.org/get', params=payload)

print(r.url)         # URL com parâmetros
print(r.json())      # Conteúdo JSON
```

## Cabeçalhos personalizados

```python
headers = {
    'User-Agent': 'meuApp/1.0',
    'Accept': 'application/json'
}

r = requests.get('https://httpbin.org/headers', headers=headers)
print(r.json())
```

## Upload de Arquivos

```python
files = {'arquivo': open('exemplo.txt', 'rb')}

r = requests.post('https://httpbin.org/post', files=files)
print(r.json())
```

## Autenticação HTTP básica

```python
from requests.auth import HTTPBasicAuth

r = requests.get('https://httpbin.org/basic-auth/usuario/senha',
                 auth=HTTPBasicAuth('usuario', 'senha'))

print(r.status_code)
print(r.json())
```

## Timeout e Tratamento de Erros

```python
try:
    r = requests.get('https://httpbin.org/delay/10', timeout=5)
except requests.exceptions.Timeout:
    print('A requisição demorou demais!')
```

## Redirecionamento Automático

```python
r = requests.get('http://github.com')  # Redireciona para https
print(r.url)  # https://github.com/
print(r.history)  # Histórico de redirecionamentos
```

## Verificando Erros com `.raise_for_status()`

```python
r = requests.get('https://httpbin.org/status/404')

try:
    r.raise_for_status()
except requests.exceptions.HTTPError as e:
    print(f'Erro HTTP: {e}')
```

# `bs4`

## O que é o `BeautifulSoup`?

O **BeautifulSoup** é uma biblioteca que facilita a **navegação, busca e modificação de documentos HTML e XML**. Ele é geralmente usado em conjunto com a biblioteca `requests` para baixar e processar páginas da web.

## Instalação

```bash
pip install beautifulsoup4
```
ou tambem
```bash
pip install bs4
```

## Exemplo Básico

Extraindo dados de uma página HTML :

```python
from bs4 import BeautifulSoup

html = """
<html>
  <head><title>Meu site</title></head>
  <body>
    <h1>Bem-vindo!</h1>
    <p class="conteudo">Aprendendo <b>Python</b> com web scraping.</p>
    <a href="https://exemplo.com">Link</a>
  </body>
</html>
"""

soup = BeautifulSoup(html, 'html.parser')

print(soup.title)        # <title>Meu site</title>
print(soup.title.string) # Meu site
print(soup.h1.text)      # Bem-vindo!
print(soup.a['href'])    # https://exemplo.com
```

## Como Navegar na Árvore do HTML

```python
print(soup.body.h1)          # <h1>Bem-vindo!</h1>
print(soup.body.p.b.text)    # Python
```

### `.string` vs `.text`

* `.string`: retorna o **texto exato** do elemento se ele tiver apenas um filho.
* `.text`: retorna **todo o texto**, mesmo com filhos aninhados.

## Usando `find()` e `find_all()`

```python
# Apenas o primeiro parágrafo
p = soup.find('p')
print(p.text)

# Todos os links
links = soup.find_all('a')
for link in links:
    print(link['href'])
```

## Seletores por Classe e ID

HTML de exemplo:

```html
<p class="destaque">Texto 1</p>
<p class="normal">Texto 2</p>
```

### Usando `find` com atributos

```python
soup.find('p', class_='destaque').text
```

### Usando `select()` (como CSS)

```python
soup.select_one('p.destaque').text     # Primeiro p com classe destaque
soup.select('p.normal')                # Todos com classe normal
```

## Atributos e Conteúdo

```python
a = soup.find('a')
print(a['href'])         # Atributo href
print(a.get('href'))     # Melhor: evita erro se não existir

# Ver todos os atributos
print(a.attrs)  # {'href': 'https://exemplo.com'}
```

## Iterar sobre múltiplos elementos

```python
for tag in soup.find_all('p'):
    print(tag.text)
```

## Limpando e Modificando HTML

```python
# Remover tags
for b in soup.find_all('b'):
    b.decompose()

# Alterar texto
soup.h1.string = 'Novo título'
print(soup)
```

## Exemplo Real: Scraping de Site

Vamos buscar os títulos do blog do Python:

```python
import requests
from bs4 import BeautifulSoup

url = 'https://www.python.org/blogs/'
response = requests.get(url)
soup = BeautifulSoup(response.text, 'lxml')

for item in soup.select('.list-recent-posts li a'):
    print(item.text)
```

## Dicas Úteis

| Função         | Descrição                                               |
| -------------- | ------------------------------------------------------- |
| `find()`       | Primeiro elemento que bate                              |
| `find_all()`   | Lista de todos os elementos                             |
| `select()`     | Lista de elementos via seletores CSS (`.classe`, `#id`) |
| `select_one()` | Um único elemento com seletor CSS                       |
| `.text`        | Texto interno (recursivo)                               |
| `.string`      | Texto interno (somente se for filho único)              |
| `.get(attr)`   | Acessa atributo com segurança                           |

## Cuidados com Web Scraping

1. **Verifique os termos de uso** do site.
2. Use **headers** para se comportar como um navegador.
3. Evite requisições em massa (use `time.sleep()`).
4. Para sites dinâmicos (JS), pode ser necessário Selenium ou Scrapy.

