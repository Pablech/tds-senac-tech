# índice

1. [para que serve](#para-que-serve)
1. [instalando](#instalando)
1. [como funciona](#como-funciona)
1. [classe `tk`](#classe-tk)
1. [elementos tkinter](#elementos-tkinter)
1. [`Label`](#label)
    1. [exercícios `Label`](#exercícios-label)
1. [`Button`](#button)
    1. [exercícios `Button`](#exercícios-button)
1. [`Entry`](#entry)
    1. [exercícios `Entry`](#exercícios-entry)
1. [`Text`](#text)
    1. [exercícios `Text`](#exercícios-text)
1. [`Listbox`](#listbox)
    1. [exercícios `Listbox`](#exercícios-listbox)
1. [`Checkbutton`](#checkbutton)
    1. [exercícios `Checkbutton`](#exercícios-checkbutton)
1. [`Radiobutton`](#radiobutton)
    1. [exercícios `Radiobutton`](#exercícios-radiobutton)
1. [gerenciadores de layout](#gerenciadores-de-layout)
    1. [exercícios gerenciadores de layout](#exercícios-gerenciadores-de-layout)
1. [variáveis](#variáveis)
    1. [exercícios variáveis](#exercícios-variáveis)



# tkinter

O **Tkinter** é a biblioteca padrão do Python para a criação de interfaces gráficas (GUIs - Graphical User Interfaces). Ele fornece um conjunto de ferramentas para construir janelas, botões, caixas de texto, menus e outros elementos visuais que permitem a interação do usuário com o programa.

Essa biblioteca é uma interface para o toolkit gráfico **Tk**, que é multiplataforma. Isso significa que os programas criados com Tkinter funcionam em diferentes sistemas operacionais, como Windows, macOS e Linux, sem a necessidade de modificações no código.

## para que serve

O Tkinter é usado para criar aplicações com uma interface visual, permitindo que os usuários interajam com o programa de maneira mais intuitiva. Diferente dos programas baseados em linha de comando, onde o usuário digita comandos, as interfaces gráficas permitem cliques, inserções de texto, seleções de menus, etc.

Exemplos de programas que podem ser feitos com Tkinter incluem:
- calculadoras simples;
- gerenciadores de arquivos;
- ferramentas de anotação de texto;
- jogos simples;
- painéis de controle para automação de processos;

## instalando

O Tkinter já vem instalado na maioria das distribuições do Python, então, em muitos casos, não é necessário fazer uma instalação manual. Contudo, em alguns sistemas, especialmente em distribuições Linux, pode ser necessário instalar o Tkinter separadamente.

Antes de qualquer instalação, é possível verificar se o Tkinter já está disponível no seu Python. Basta rodar o seguinte comando em um terminal :

```bash
python -m tkinter
```

Se o Tkinter estiver instalado, uma janela será aberta. Caso contrário, uma mensagem de erro será exibida, indicando que o Tkinter não está presente.

### como instalar

#### Windows

No Windows, o Tkinter geralmente já vem junto com a instalação do Python, então não há a necessidade de instalar manualmente. No entanto, se estiver usando uma versão customizada do Python que não inclua o Tkinter, pode ser necessário reinstalar o Python a partir do site oficial ([python.org](https://www.python.org/)) e certificar-se de selecionar a opção "Tkinter" durante a instalação.

#### macOS

No macOS, o Tkinter também costuma vir pré-instalado com o Python. Contudo, se o Python que usado foi instalado via um gerenciador de pacotes como o Homebrew, pode ser necessário instalá-lo separadamente.

Para instalar o Python com suporte ao Tkinter pelo Homebrew, use os seguintes comandos :

```bash
brew install python-tk
```

#### Linux

Em muitas distribuições Linux, o Tkinter não vem incluído com o Python e precisa ser instalado separadamente. Os comandos variam dependendo da distribuição:

- **Ubuntu/Debian**

    ```bash
    sudo apt-get install python3-tk
    ```

- **Fedora**

    ```bash
    sudo dnf install python3-tkinter
    ```

- **Arch Linux**

    ```bash
    sudo pacman -S tk
    ```

#### Conda (Anaconda/Miniconda)

Se estiver usando o Anaconda ou Miniconda, o Tkinter pode ser instalado usando o seguinte comando no ambiente conda :

```bash
conda install -c anaconda tk
```

### testando

Após a instalação, para garantir que o Tkinter está funcionando corretamente, basta executar o mesmo comando testado anteriormente:

```bash
python -m tkinter
```

Se uma janela aparecer sem erros, a instalação foi bem-sucedida.

## como funciona

O Tkinter opera em um modelo de programação baseado em eventos. Isso significa que a aplicação "espera" por interações do usuário (como cliques ou entradas de teclado) e responde a essas interações de forma apropriada.

A estrutura básica de um programa com Tkinter envolve:
1. **Criação da janela principal :** o ponto de partida é a criação de uma janela principal (o "janela" ou "janela"), onde os elementos da interface serão colocados;
1. **Adição de widgets :** widgets são os componentes da interface gráfica, como botões, labels, caixas de entrada, etc; esses widgets são inseridos dentro da janela;
1. **Configuração de eventos :** cada widget pode responder a eventos específicos, como um clique de mouse ou uma tecla pressionada; o programador define o que deve acontecer quando um evento ocorre, associando funções a esses eventos;
1. **Loop de execução :** a aplicação Tkinter precisa estar em um loop contínuo, aguardando e processando eventos do usuário; isso é feito com o método `mainloop()`;

Veja um exemplo simples :

```python
# importa o módulo Tkinter
import tkinter as tk

# cria a janela principal (janela)
janela = tk.Tk()

# adiciona um rótulo (label) à janela
label = tk.Label(janela, text="Olá, Turma!")
label.pack()  # posiciona o rótulo na janela

# inicia o loop de eventos da janela
janela.mainloop()
```

Neste exemplo:
- é criada uma janela principal (`janela`);
- é adicionado um widget de rótulo (`Label`) com o texto "Olá, Mundo!";
- o método `pack()` é usado para posicionar o rótulo na janela;
- por fim, iniciamos o loop de eventos com `janela.mainloop()`;

## classe `tk`

A classe `Tk()` representa a **janela principal** de uma aplicação Tkinter. Ela é responsável por iniciar o loop de eventos e controlar todos os widgets que serão adicionados à interface. Ao criar uma instância de `Tk()`, se está essencialmente criando a janela principal de um aplicativo.

Veja um exemplo básico :

```python
# importa o módulo Tkinter
import tkinter as tk

# cria uma nova instância da classe Tk (a janela principal)
janela = tk.Tk()

# configura o título da janela
janela.title("Minha segunda janela com Tkinter")

# define o tamanho inicial da janela (largura x altura)
janela.geometry("400x300")

# inicia o loop de eventos da janela
janela.mainloop()
```

O que está acontecendo acima :

1. **Importação do módulo Tkinter** :
    - o Tkinter precisa ser importado antes de ser utilizado; aqui, `import tkinter as tk` é usado para tornar o código mais conciso, mas também poderia ser usado `import tkinter` diretamente;

2. **Criação da instância `Tk()`** :
    - o objeto `janela` é uma instância da classe `Tk()`, que representa a janela principal do programa; toda aplicação Tkinter precisa dessa instância como ponto de partida;
    - isso cria uma janela vazia que, por enquanto, não faz nada até que widgets sejam adicionados;

3. **Configuração do título da janela** :
    - usa-se `janela.title("Minha segunda janela com Tkinter")` para dar um título à janela, que aparecerá na barra superior;

4. **Configuração do tamanho da janela** :
    - a função `janela.geometry("400x300")` define as dimensões iniciais da janela, onde `"400x300"` indica que a janela terá 400 pixels de largura e 300 pixels de altura;

5. **Loop de eventos (`mainloop()`)** :
    - a chamada `janela.mainloop()` é essencial e serve para iniciar o loop de eventos do Tkinter; este loop aguarda interações do usuário (como cliques ou inserção de dados) e mantém a janela aberta até que o usuário a feche; sem esse loop, a janela desapareceria imediatamente após sua criação;

### métodos da instância `tk()`

Uma instância da classe `Tk()` possui diversos métodos que são usados para configurar a aplicação.

Veja a tabela abaixo :

| Nome do Método | Parâmetros | Descrição |
|----|----|----|
| `title()` | `title (str)` | define o título da janela |
| `geometry()` | `geometry_string (str)` | define o tamanho e a posição da janela no formato `"largura"x"altura"+"posição_x"+"posição_y"`. Exemplo: `"400x300+100+200"` |
| `resizable()` | `width (bool), height (bool)` | controla se a janela pode ser redimensionada horizontalmente (largura) e verticalmente (altura) |
| `minsize()` | `min_width (int), min_height (int)` | define o tamanho mínimo permitido da janela |
| `maxsize()` | `max_width (int), max_height (int)` | define o tamanho máximo permitido da janela |
| `iconbitmap()` | `bitmap_path (str)` | define o ícone da janela (somente no Windows) a partir de um arquivo `.ico` |
| `attributes()` | `-alpha (float)` | define a transparência da janela. O valor varia de `0` (completamente transparente) a `1` (completamente opaco) |
| `destroy()` | nenhum | Fecha a janela e encerra o loop de eventos |
| `mainloop()` | nenhum | Inicia o loop de eventos da aplicação, mantendo a janela aberta até que seja fechada |
| `configure()` | `**options` | modifica diversas opções de configuração da janela, como a cor de fundo (`bg`), borda, entre outras |
| `update()` | nenhum | Atualiza a janela, processando eventos pendentes.|
| `update_idletasks()` | nenhum | Processa apenas as tarefas pendentes que não exigem interação do usuário, como a renderização de widgets |
| `after()` | `time (int), func, *args` | executa a função `func` após o tempo especificado em milissegundos. Pode ser usado para agendar eventos futuros |
| `bind()` | `event (str), handler (func)` | associa um evento (como cliques ou pressionamento de teclas) a uma função. Exemplo: associar `<Button-1>` para detectar cliques com o mouse |
| `deiconify()` | nenhum | Restaura uma janela que foi minimizada |
| `withdraw()` | nenhum | Oculta a janela sem fechá-la |
| `lift()` | nenhum | Traz a janela para a frente de todas as outras janelas no sistema |
| `lower()` | nenhum | Envia a janela para trás de todas as outras janelas no sistema |
| `protocol()` | `name (str), func` | associa uma função ao fechamento da janela, por exemplo, capturando o evento de fechar a janela com `"WM_DELETE_WINDOW"` |

## elementos tkinter

### widgets

| Nome do Widget | Parâmetros Comuns | Explicação |
|---|---|---|
| [`Label`](#label) | `text`, `font`, `bg`, `fg`, `width`, `height` | exibe texto ou imagens |
| [`Button`](#button) | `text`, `command`, `width`, `height`, `bg`, `fg` | cria um botão clicável |
| [`Entry`](#entry) | `width`, `bg`, `fg`, `show` | permite a entrada de texto de uma única linha |
| [`Text`](#text) | `width`, `height`, `bg`, `fg`, `wrap` | permite a entrada e exibição de texto multilinha |
| [`Listbox`](#listbox) | `width`, `height`, `bg`, `fg`, `selectmode` | exibe uma lista de itens que podem ser selecionados |
| [`Checkbutton`](#checkbutton) | `text`, `variable`, `onvalue`, `offvalue`, `command` | cria uma caixa de seleção (checkbox) |
| [`Radiobutton`](#radiobutton) | `text`, `variable`, `value`, `command` | cria um botão de opção (radio button) dentro de um grupo |
| `Scale` | `from_`, `to`, `orient`, `length`, `tickinterval`, `resolution`, `command` | cria um controle deslizante (slider) para selecionar um valor numérico |
| `Scrollbar` | `orient`, `command` | cria uma barra de rolagem para navegar em conteúdo maior que a área visível |
| `Frame` | `bg`, `relief`, `bd` | cria um contêiner para organizar outros widgets |
| `Toplevel` | `bg`, `title` | cria uma nova janela de nível superior (semelhante à janela principal) |
| `Menu` || Cria uma barra de menus |
| `Menubutton` | `text`, `menu` | cria um botão que abre um menu suspenso |
| `Canvas` | `width`, `height`, `bg` | cria uma área para desenhar gráficos e formas |
| `Spinbox` | `from_`, `to`, `increment`, `values`, `wrap`, `command` | cria uma caixa de entrada com setas para cima e para baixo para selecionar um valor de uma lista ou intervalo |
| `PanedWindow` | `orient`, `showhandle`, `sashrelief`, `sashwidth` | cria uma janela com painéis redimensionáveis |
| `LabelFrame` | `text`, `bg`, `relief`, `bd` | cria um frame com um rótulo |
| `Message` | `text`, `bg`, `fg`, `width`, `aspect`, `justify`, `relief`, `bd` | exibe texto multilinha que se ajusta automaticamente à área disponível |
| `OptionMenu` | `variable`, `*values` | cria um menu suspenso para selecionar uma opção de uma lista |

### variáveis

| Nome da Variável | Parâmetros | Explicação |
|----|----|----|
| [`StringVar`](#stringvar)  | `value=None`  | armazena e gerencia valores do tipo `str`. Usada para associar widgets de texto, como `Entry` e `Label` |
| [`IntVar`](#intvar) | `value=None` | armazena e gerencia valores inteiros (`int`). Usada com widgets como `Radiobutton` e `Checkbutton` |
| [`DoubleVar`](#doublevar) | `value=None` | armazena e gerencia valores de ponto flutuante (`float`). Usada para valores numéricos, como em entradas ou cálculos |
| [`BooleanVar`](#booleanvar) | `value=None` | armazena e gerencia valores booleanos (`True` ou `False`). Usada para associar widgets como `Checkbutton` |

- `value`: O valor inicial que a variável irá armazenar. Por padrão, é `None` para `StringVar`, `IntVar`, `DoubleVar` e `BooleanVar`.

## `Label`

O **Label** é um widget simples usado para exibir textos ou imagens estáticas em uma janela. Ele é normalmente utilizado para rótulos, mensagens ou títulos em uma interface gráfica.

```python
label = tk.Label(parent, options...)
```

### parâmetros mais comuns

- **`parent`** (`Tk`, `Frame`) : a janela ou frame onde o rótulo será colocado (geralmente a instância `Tk()` ou um `Frame()`);
- **`text`** (`str`) : define o texto a ser exibido no rótulo;
- **`bg`** (`str`) : define a cor de fundo;
- **`fg`** (`str`) : define a cor do texto;
- **`font`** (`tuple`) : define a fonte, estilo e tamanho do texto;
- **`image`** (`PhotoImage`) : exibe uma imagem em vez de texto;
- **`padx`, `pady`** (`int`) : define o espaçamento horizontal e vertical ao redor do rótulo;

### exemplo

```python
import tkinter as tk

# criação da janela principal
janela = tk.Tk()
janela.title("Exemplo de Label")
janela.geometry("300x200")

# criando um rótulo (Label)
label = tk.Label(
    janela,
    text="Olá, Mundo!",
    font=("Arial", 20, "bold"),
    bg="lightblue",
    fg="#FFFFFF" # código hexadecimal para cor preta
)
# adicionando com padding
label.pack(padx=20, pady=20)

# iniciando o loop de eventos
janela.mainloop()
```

- **`text="Olá, Mundo!"`** : define o texto exibido;
- **`font=("Arial", 20)`** : define a fonte como Arial e o tamanho 20;
- **`bg="lightblue"` e `fg="black"`** : define a cor de fundo e a cor do texto;
- **`pack()`** : adiciona o rótulo à janela com espaçamento ao redor;

## exercícios `Label`

<details>
<summary>Lista de Exercícios</summary>

1. **Exibindo Texto Simples** : Crie uma janela com um `Label` que exiba o texto "Olá, Mundo!". Personalize o tamanho da janela e o tamanho da fonte do texto.
1. **Modificando Texto de um Label** : Crie um programa que contenha um botão e um `Label`. Ao clicar no botão, o texto do `Label` deve ser alterado para "Texto modificado!".
1. **Labels com Várias Fontes** : Crie três `Labels`, cada um exibindo o texto "Fonte A", "Fonte B" e "Fonte C", com diferentes estilos de fonte, tamanhos e cores.
1. **Exibindo Imagens em um Label** : Use o widget `Label` para exibir uma imagem (formato PNG ou JPG). Certifique-se de redimensionar a janela de acordo com a imagem.
1. **Label Dinâmico com Variável** : Crie um programa com uma `StringVar` e um `Label`. Modifique o valor da `StringVar` dinamicamente a cada 2 segundos para exibir diferentes mensagens no `Label`.
1. **Criando Labels com Fundo e Borda** : Crie dois `Labels` com textos diferentes. Um deve ter uma cor de fundo (background) personalizada e o outro deve ter uma borda (borderwidth) configurada.
1. **Label com Texto Longo e Quebra de Linha** : Crie um `Label` que exiba um texto longo e configure o widget para que o texto seja quebrado automaticamente em múltiplas linhas, ajustando a largura do widget.
1. **Centralizando um Label** : Crie um `Label` que seja centralizado horizontalmente e verticalmente dentro da janela. Use o método de layout `pack()` ou `grid()` para centralizar o widget.
1. **Interação entre Entry e Label** : Crie um programa com um `Entry` e um `Label`. O texto digitado no `Entry` deve aparecer em tempo real no `Label`, conforme o usuário digita.
1. **Alterando o Texto do Label com Radiobuttons** : Crie três `Radiobuttons`, cada um com uma cor como opção (vermelho, verde e azul). Quando o usuário selecionar uma das cores, o texto do `Label` deve mudar para "Você escolheu: [cor]".

</details>

---

## `Button`

O **Button** cria um botão interativo que pode realizar uma ação quando clicado. Ele pode exibir texto, uma imagem ou executar uma determinada ação.

```python
button = tk.Button(parent, options...)
```

### parâmetros mais comuns

- **`parent`** (`Widget`) : a janela ou frame onde o botão será colocado (geralmente uma instância `Tk()` ou `Frame()`);
- **`text`** (`str`) : define o texto exibido no botão;
- **`command`** (`function`) : define a função a ser chamada quando o botão for clicado (função sem parênteses, pois será chamada no evento de clique);
- **`bg`** (`str`) : define a cor de fundo do botão (nome da cor ou código hexadecimal);
- **`fg`** (`str`) : define a cor do texto no botão (nome da cor ou código hexadecimal);
- **`font`** (`tuple`) : define a fonte, estilo e tamanho do texto no botão (ex: `("Arial", 12, "bold")`);
- **`state`** (`str`) : define o estado do botão, como `"normal"` (ativo) ou `"disabled"` (desativado);

### exemplo

```python
import tkinter as tk

def on_click():
    label.config(text="Botão clicado!")

# criação da janela principal
janela = tk.Tk()
janela.title("Exemplo de Button")
janela.geometry("300x200")

# criando um rótulo (Label)
label = tk.Label(
    janela,
    text="Clique no botão",
    font=("Arial", 16))
label.pack(padx=10, pady=10)

# criando um botão (Button)
button = tk.Button(
    janela,
    text="Clique aqui",
    command=on_click,
    font=("Arial", 16),
    bg="lightgreen")
button.pack(padx=10, pady=10)

# iniciando o loop de eventos
janela.mainloop()
```

- **`command=on_click`** : especifica que, ao clicar no botão, a função `on_click()` será chamada;
- **`label.config()`** : atualiza o texto do rótulo dinamicamente quando o botão é clicado;
- **`bg="lightgreen"`** : define a cor de fundo do botão;

## exercícios `Button`

<details>
<summary>Lista de Exercícios</summary>

1. **Botão Simples** : Crie uma janela com um único botão que, quando clicado, exibe a mensagem "Botão Clicado!" no terminal (usando a função `print()`).
1. **Desabilitando e Habilitando o Botão** : Crie um programa com um botão que começa habilitado. Quando clicado, ele deve ser desativado (desabilitado). Adicione outro botão que reative o botão anterior.
1. **Botão que Muda o Texto de um Label** : Crie uma interface com um botão e um `Label`. Ao clicar no botão, o texto do `Label` deve mudar para "Botão Pressionado!".
1. **Botão com Cores Personalizadas** : Crie três botões, cada um com uma cor de fundo (background) e uma cor de texto (foreground) personalizada. Ao clicar em qualquer botão, exiba uma mensagem no terminal indicando qual botão foi clicado.
1. **Botão que Fecha a Janela** : Crie um programa com um botão que, ao ser clicado, fecha a janela do Tkinter (usando o método `destroy()`).
1. **Botão com Tamanho Ajustado** : Crie um botão com largura e altura definidas manualmente (usando os parâmetros `width` e `height`). Quando clicado, exiba uma mensagem no terminal indicando o tamanho do botão.
1. **Botão com Imagem** : Use o widget `Button` para criar um botão com uma imagem (formato PNG ou JPG) ao invés de texto. Quando o botão for clicado, exiba uma mensagem no terminal.
1. **Botão que Inicia e Para um Temporizador** : Crie um programa com dois botões: um para iniciar um temporizador que incrementa um contador a cada segundo e exibe o valor em um `Label`, e outro botão para parar o temporizador.
1. **Botão de Alternância (Toggle Button)** : Crie um botão que alterne entre dois estados: "ON" e "OFF". Quando estiver "ON", o botão deve exibir "Desligar" e, quando estiver "OFF", deve exibir "Ligar". Ao clicar, ele deve alternar entre os estados.
1. **Botão com Funções Diferentes para Clique Simples e Duplo** : Crie um programa com um botão que execute uma função ao ser clicado uma vez e outra função ao ser clicado duas vezes (usando os eventos `<Button-1>` para clique simples e `<Double-1>` para clique duplo).

</details>

---

## `Entry`

O **Entry** é um widget de entrada de texto de linha única, usado para coletar informações como nomes, senhas ou qualquer tipo de dado que caiba em uma única linha.

```python
entry = tk.Entry(parent, options...)
```

### parâmetros mais comuns

- **`parent`** (`Widget`) : a janela ou frame onde o campo de entrada será colocado (geralmente uma instância `Tk()` ou `Frame()`);
- **`textvariable`** (`Variable`) : associado a uma variável do tipo `StringVar()`, permite obter ou alterar o texto do campo dinamicamente;
- **`show`** (`str`) : define um caractere para ser exibido no lugar do texto digitado (geralmente usado para senhas);
- **`bg`** (`str`) : define a cor de fundo do campo de entrada;
- **`fg`** (`str`) : define a cor do texto dentro do campo de entrada;
- **`font`** (`tuple`) : define a fonte, estilo e tamanho do texto (ex: `("Arial", 12, "bold")`);
- **`state`** (`str`) : define o estado do campo de entrada, como `"normal"` (ativo) ou `"disabled"` (desativado);
- **`justify`** (`str`) : define o alinhamento do texto dentro do campo, como `"left"`, `"center"` ou `"right"`;
- **`width`** (`int`) : define a largura do campo de entrada em número de caracteres;

### métodos úteis

- **`get()`** : obtém o texto atual do campo;
- **`delete(start, end)`** (`int`, `int` ou `str`) : apaga o texto entre as posições `start` e `end`
    - se `end` for omitido, apaga a partir de `start` até o final;
    - também pode usar `"end"` para representar o final do texto;
- **`insert(index, string)`** (`int` ou `str`, `str`) : insere o texto (`string`) na posição especificada por `index`;
    - o `index` pode ser um número inteiro ou `"end"` para inserir no final do texto;

### exemplo

```python
import tkinter as tk

def mostra_digitado():
    digitado = entry.get()  # obtém o texto do campo
    label.config(text=f"Você digitou: {digitado}")

# criação da janela principal
janela = tk.Tk()
janela.title("Exemplo de Entry")
janela.geometry("300x150")

# criando um rótulo (Label)
label = tk.Label(janela, text="Digite algo:", font=("Arial", 12))
label.pack(padx=10, pady=10)

# criando um campo de entrada (Entry)
entry = tk.Entry(janela, font=("Arial", 12), bg="lightyellow")
entry.pack(padx=10, pady=10)

# botão para exibir o texto digitado
button = tk.Button(
    janela,
    text="Mostrar Texto",
    command=mostra_digitado,
    font=("Arial", 12))
button.pack(padx=10, pady=10)

# iniciando o loop de eventos
janela.mainloop()
```

- **`get()`** : obtém o valor atual do campo `Entry`;
- **`label.config()`** : atualiza o texto do rótulo com o valor obtido do campo;

## exercícios `Entry`

<details>
<summary>Lista de Exercícios</summary>

1. **Entrada Simples** : Crie uma janela com um widget `Entry` e um botão. Quando o botão for clicado, o texto inserido no `Entry` deve ser exibido no terminal (usando `print()`).
1. **Limpar Entrada** : Crie uma interface com um widget `Entry` e dois botões: um para exibir o conteúdo da entrada no terminal e outro para limpar o texto digitado no `Entry`.
1. **Entrada de Texto com Placeholder** : Crie um `Entry` que exiba um texto padrão (placeholder) quando vazio, como "Digite seu nome". O texto deve desaparecer quando o usuário começar a digitar.
1. **Verificar o Tamanho do Texto** : Crie um programa com um `Entry` e um botão. Quando o botão for clicado, o programa deve verificar se o texto inserido tem mais de 5 caracteres e, se for o caso, exibir "Texto válido" em um `Label`, ou "Texto muito curto" caso contrário.
1. **Entrada de Senha (Password Entry)** : Crie um `Entry` que oculte os caracteres digitados, como em um campo de senha. Exiba o valor inserido em um `Label` ao clicar em um botão.
1. **Entrada Numérica** : Crie um `Entry` que só permita a entrada de números inteiros (use validação ou o método `validatecommand`). Quando o valor for inserido, exiba-o em um `Label`.
1. **Entrada com Texto Capitalizado Automaticamente** : Crie um `Entry` onde o texto digitado seja automaticamente convertido para letras maiúsculas enquanto o usuário digita. Exiba o valor em um `Label`.
1. **Verificar se o Campo de Entrada Está Vazio** : Crie uma interface com um `Entry` e um botão. Quando o botão for clicado, o programa deve verificar se o campo de entrada está vazio e, se estiver, exibir uma mensagem de erro em um `Label`.
1. **Entrada com Limite de Caracteres** : Crie um `Entry` com um limite máximo de 10 caracteres. Se o usuário tentar digitar mais, impeça que os caracteres adicionais sejam adicionados. Exiba a contagem de caracteres restantes em tempo real em um `Label`.
1. **Exibir Texto Digitado em Tempo Real** : Crie um `Entry` e um `Label`. À medida que o usuário digita no `Entry`, o texto deve ser exibido em tempo real no `Label`, sem a necessidade de pressionar um botão.

</details>

---

## `Text`

O **Text** é um widget que permite a entrada e exibição de múltiplas linhas de texto, sendo bastante utilizado em caixas de texto onde o usuário pode escrever ou visualizar blocos de texto.

```python
text = tk.Text(parent, options...)
```

### parâmetros mais comuns

- **`parent`** (`Widget`) : a janela ou frame onde o campo de texto será colocado (geralmente uma instância `Tk()` ou `Frame()`);
- **`width`** (`int`) : define a largura do widget em número de caracteres;
- **`height`** (`int`) : define a altura do widget em número de linhas;
- **`bg`** (`str`) : define a cor de fundo do campo de texto (nome da cor ou código hexadecimal);
- **`fg`** (`str`) : define a cor do texto no campo de texto (nome da cor ou código hexadecimal);
- **`font`** (`tuple`) : define a fonte, estilo e tamanho do texto no campo de texto (ex: `("Arial", 12, "bold")`);
- **`state`** (`str`) : define o estado do campo de texto, como `"normal"` (ativo), `"disabled"` (desativado), ou `"readonly"` (somente leitura).

### métodos úteis

- **`get(start, end)`** (`str`, `str`) : obtém o texto do widget entre as posições `start` e `end`;
    - as posições podem ser índices no formato de string (ex: `"1.0"` para linha 1, coluna 0), ou palavras-chave como `"end"`;
- **`insert(position, text)`** (`str`, `str`) : insere o texto (`text`) no widget na posição especificada por `position`;
    - o `position` pode ser um índice no formato de string (ex: `"1.0"`) ou a palavra-chave `"end"`;
- **`delete(start, end)`** (`str`, `str`) : remove o texto entre as posições `start` e `end`;
    - as posições seguem o mesmo formato do método `get()`, podendo ser índices ou palavras-chave como `"end"`;


### exemplo

```python
import tkinter as tk

def mostra_texto():
    # obtém o texto do campo de texto
    texto_usuario = text_box.get("1.0", tk.END)
    # exibe o texto no rótulo
    label.config(text=texto_usuario)

# criação da janela principal
janela = tk.Tk()
janela.title("Exemplo de Text")
janela.geometry("400x300")

# criando um rótulo (Label)
label = tk.Label(
    janela,
    text="Digite algo abaixo:",
    font=("Arial", 14))
label.pack(padx=10, pady=10)

# criando um campo de texto (Text)
text_box = tk.Text(
    janela,
    width=40,
    height=5,
    font=("Arial", 12))
text_box.pack(padx=10, pady=10)

# criando um botão (Button) para exibir o texto digitado
button = tk.Button(
    janela,
    text="Exibir texto",
    command=mostra_texto,
    font=("Arial", 14),
    bg="lightblue")
button.pack(padx=10, pady=10)

# iniciando o loop de eventos
janela.mainloop()
```

- **`text_box.get("1.0", tk.END)`** : obtém todo o texto do campo, começando da linha 1, caractere 0 (`1.0`), até o fim (`tk.END`);
- **`text_box.insert()`** : pode ser usado para adicionar texto programaticamente ao widget;
- **`text_box.delete()`** : pode ser usado para apagar partes ou todo o conteúdo do widget;
- **`label.config()`** : atualiza o texto do rótulo para mostrar o conteúdo do campo de texto;

## exercícios `Text`

<details>
<summary>Lista de Exercícios</summary>

1. **Text Widget Básico** : Crie uma janela com um widget `Text` e um botão. Quando o botão for clicado, o conteúdo digitado no `Text` deve ser exibido no terminal (usando `print()`).
1. **Limpar Conteúdo do Text Widget** : Crie um widget `Text` com dois botões: um para exibir o conteúdo digitado e outro para limpar o conteúdo do widget.
1. **Contagem de Caracteres no Text Widget** : Crie um `Text` e um botão. Quando o botão for clicado, exiba a quantidade de caracteres inseridos no widget `Text` em um `Label`.
1. **Text Widget com Barra de Rolagem** : Crie um `Text` que possa exibir grandes blocos de texto e adicione uma barra de rolagem para permitir a navegação vertical do conteúdo.
1. **Busca de Texto no Widget** : Crie um programa com um `Text` e um `Entry`. Quando o usuário digitar uma palavra no `Entry` e pressionar um botão, destaque todas as ocorrências da palavra dentro do widget `Text`.
1. **Inserir Texto Programaticamente** : Crie um programa onde um botão insere um texto predefinido no `Text` sempre que clicado. O texto deve ser inserido no final do conteúdo já existente.
1. **Formatação de Texto (Negrito, Itálico)** : Crie um `Text` e dois botões: um para aplicar negrito e outro para aplicar itálico ao texto selecionado. Use tags do `Text` para alterar o estilo.
1. **Desabilitar Edição no Text Widget** : Crie um `Text` com um botão. O botão deve alternar entre habilitar e desabilitar a edição no `Text`, permitindo ou bloqueando o usuário de alterar o texto.
1. **Salvar Conteúdo do Text em um Arquivo** : Crie um programa com um `Text` e um botão "Salvar". Quando o botão for clicado, o conteúdo digitado no `Text` deve ser salvo em um arquivo de texto no disco.
1. **Contagem de Palavras no Text Widget** : Crie um programa que exiba a contagem de palavras inseridas no widget `Text` em tempo real, conforme o usuário digita. Exiba o número de palavras em um `Label`.

</details>

---

## `Listbox`

O **Listbox** exibe uma lista de itens, e o usuário pode selecionar um ou mais deles. Ele é útil para mostrar listas de opções, como listas de arquivos, opções de escolha múltipla, etc.

```python
listbox = tk.Listbox(parent, options...)
```

### parâmetros mais comuns

- **`parent`** (`Widget`) : a janela ou frame onde o widget será colocado (geralmente uma instância `Tk()` ou `Frame()`);
- **`selectmode`** (`str`) : define o modo de seleção; valores comuns são `"SINGLE"` para seleção única e `"MULTIPLE"` para seleção múltipla;
- **`height`** (`int`) : define o número de linhas visíveis no Listbox;
- **`bg`** (`str`) : define a cor de fundo do Listbox (nome da cor ou código hexadecimal);
- **`fg`** (`str`) : define a cor do texto no Listbox (nome da cor ou código hexadecimal);
- **`font`** (`tuple`) : define a fonte, estilo e tamanho do texto no Listbox (ex: `("Arial", 12, "bold")`);

### métodos úteis

- **`insert(index, *elements)`** (`int` ou `str`, `*str`) : insere os itens (`elements`) no Listbox na posição especificada por `index`;
    - o `index` pode ser um número inteiro ou `"end"` para inserir no final;
- **`delete(start, end)`** (`int`, `int` ou `str`) : remove itens entre as posições `start` e `end`;
    - o `end` pode ser omitido para deletar apenas um item, ou usar `"end"` para remover até o último item;
- **`get(start, end)`** (`int`, `int` ou `str`) : obtém os itens entre as posições `start` e `end`;
    - o `end` pode ser `"end"` para pegar até o último item;
- **`curselection()`** (`tuple`) : retorna uma tupla com os índices dos itens selecionados no Listbox.

### exemplo

```python
import tkinter as tk

def mostra_selecionados():
    indices_selecionados = listbox.curselection()  # Obtém os índices dos itens selecionados
    itens_selecionados = [listbox.get(i) for i in indices_selecionados]  # Converte índices em itens
    label.config(text=f"Selecionado: {', '.join(itens_selecionados)}")

# criação da janela principal
janela = tk.Tk()
janela.title("Exemplo de Listbox")
janela.geometry("300x200")

# criando uma lista de itens
listbox = tk.Listbox(
    janela,
    selectmode="SINGLE",
    font=("Arial", 12),
    height=5)
listbox.pack(padx=10, pady=10)
for item in ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]:
    listbox.insert(tk.END, item)

# criando um rótulo (Label)
label = tk.Label(
    janela,
    text="Selecione um item",
    font=("Arial", 12))
label.pack(padx=10, pady=10)

# botão para exibir a seleção
button = tk.Button(
    janela,
    text="Mostrar Seleção",
    command=mostra_selecionados,
    font=("Arial", 12))
button.pack(padx=10, pady=10)

# iniciando o loop de eventos
janela.mainloop()
```

- **`curselection()`** : obtém os índices dos itens selecionados;
- **`get()`** : converte os índices em valores para exibir os itens selecionados no rótulo;

## exercícios `Listbox`

<details>
<summary>Lista de Exercícios</summary>

1. **Listbox Simples** : Crie uma janela com um `Listbox` contendo uma lista de frutas (como maçã, banana e laranja). Exiba a fruta selecionada em um `Label` quando o usuário clicar em um botão.
1. **Adicionar Itens ao Listbox** : Crie um `Listbox` vazio e um `Entry`. Quando o usuário digitar um texto no `Entry` e clicar em um botão "Adicionar", o texto deve ser adicionado como um novo item no `Listbox`.
1. **Remover Itens do Listbox** : Crie um `Listbox` com cinco itens e um botão "Remover". Quando o botão for clicado, o item selecionado deve ser removido da lista.
1. **Selecionar Múltiplos Itens** : Crie um `Listbox` que permita a seleção de múltiplos itens (usando a opção `selectmode=MULTIPLE`). Quando um botão for clicado, exiba os itens selecionados em um `Label`.
1. **Mover Itens Entre Dois Listboxes** : Crie dois `Listboxes` lado a lado e dois botões ">>" e "<<". O botão ">>" deve mover o item selecionado do primeiro `Listbox` para o segundo, e o botão "<<" deve fazer o inverso.
1. **Contar Itens no Listbox** : Crie um `Listbox` e um botão "Contar". Quando o botão for clicado, exiba o número total de itens no `Listbox` em um `Label`.
1. **Listbox com Barra de Rolagem** : Crie um `Listbox` com 20 itens e adicione uma barra de rolagem para navegar pelos itens.
1. **Modificar o Texto de um Item Selecionado** : Crie um `Listbox` e um botão "Modificar". Quando um item for selecionado e o botão for clicado, o texto do item selecionado deve ser modificado para "Item Modificado".
1. **Limpar Todo o Conteúdo do Listbox** : Crie um `Listbox` com 5 itens e um botão "Limpar". Quando o botão for clicado, todos os itens devem ser removidos do `Listbox`.
1. **Mover Item Selecionado para Cima ou para Baixo** : Crie um `Listbox` com cinco itens e dois botões: "Mover Para Cima" e "Mover Para Baixo". O botão "Mover Para Cima" deve mover o item selecionado para uma posição acima na lista, e o botão "Mover Para Baixo" deve movê-lo para uma posição abaixo.

</details>

---

## `Checkbutton`

O **Checkbutton** cria uma caixa de seleção que permite ao usuário marcar ou desmarcar uma opção. Ele é frequentemente utilizado em formulários onde múltiplas escolhas podem ser feitas.

```python
checkbutton = tk.Checkbutton(parent, options...)
```

### parâmetros mais comuns

- **`parent`** (`Widget`) : a janela ou frame onde o widget será colocado (geralmente uma instância `Tk()` ou `Frame()`);
- **`text`** (`str`) : define o texto associado ao Checkbutton;
- **`variable`** (`IntVar()` ou `BooleanVar()`) : uma variável do tipo `IntVar()` ou `BooleanVar()` que rastreia o estado (marcado ou desmarcado) do Checkbutton;
- **`onvalue`** (`int` ou `bool`) : define o valor que a variável assume quando o Checkbutton está marcado (geralmente `1` ou `True`);
- **`offvalue`** (`int` ou `bool`) : define o valor que a variável assume quando o Checkbutton está desmarcado (geralmente `0` ou `False`).

### exemplo

```python
import tkinter as tk

def mostra_selecionados():
    label.config(text=f"Opção marcada: {opcao.get()}")

# criação da janela principal
janela = tk.Tk()
janela.title("Exemplo de Checkbutton")
janela.geometry("300x150")

# variável associada ao Checkbutton
opcao = tk.IntVar()

# criando um Checkbutton
checkbutton = tk.Checkbutton(
    janela,
    text="Aceitar Termos",
    variable=opcao,
    onvalue=1,
    offvalue=0)
checkbutton.pack(padx=10, pady=10)

# criando um rótulo (Label)
label = tk.Label(janela, text="Opção marcada: 0", font=("Arial", 12))
label.pack(padx=10, pady=10)

# botão para exibir o estado
button = tk.Button(
    janela,
    text="Mostrar Seleção",
    command=mostra_selecionados,
    font=("Arial", 12))
button.pack(padx=10, pady=10)

# iniciando o loop de eventos
janela.mainloop()
```

- **`variable=opcao`** : a variável `opcao` armazena o estado do Checkbutton (marcado ou desmarcado);
- **`onvalue=1` e `offvalue=0`** : define os valores quando o Checkbutton está marcado ou desmarcado;

## exercícios `Checkbutton`

<details>
<summary>Lista de Exercícios</summary>

1. **Checkbutton Simples** : Crie um programa com um `Checkbutton` que, ao ser marcado ou desmarcado, exibe o estado atual ("Marcado" ou "Desmarcado") em um `Label`.
1. **Checkbutton com Variável de Controle** : Crie um `Checkbutton` associado a uma variável `IntVar`. Quando o `Checkbutton` for alterado, exiba o valor da variável (`1` para marcado, `0` para desmarcado) em um `Label`.
1. **Vários Checkbuttons Independentes** : Crie três `Checkbuttons` independentes para selecionar "Pizza", "Hambúrguer" e "Sushi". Ao clicar em um botão "Exibir Seleção", mostre quais opções estão marcadas em um `Label`.
1. **Checkbuttons com Estado Inicial** : Crie dois `Checkbuttons` com estado inicial, um marcado e outro desmarcado. Permita que o usuário altere os estados e exiba os novos estados em um `Label`.
1. **Checkbutton que Habilita e Desabilita Outros Widgets** : Crie um `Checkbutton` que, quando marcado, habilita um `Entry` para que o usuário possa digitar. Quando desmarcado, o `Entry` deve ser desabilitado (usando o método `config(state=DISABLED)`).
1. **Alternando Texto de um Checkbutton** : Crie um `Checkbutton` com o texto "Ativar". Quando ele for marcado, o texto deve mudar para "Desativar". Quando desmarcado, o texto deve voltar para "Ativar".
1. **Selecionar e Desmarcar Todos os Checkbuttons** : Crie cinco `Checkbuttons` com opções variadas (por exemplo, "Opção 1", "Opção 2", etc.) e dois botões: "Selecionar Todos" e "Desmarcar Todos". Ao clicar nesses botões, todos os `Checkbuttons` devem ser marcados ou desmarcados, respectivamente.
1. **Checkbuttons com Contagem de Seleção** : Crie três `Checkbuttons`. Quando o usuário marcar ou desmarcar qualquer um deles, exiba em um `Label` quantos `Checkbuttons` estão atualmente marcados.
1. **Checkbutton que Controla a Cor de Fundo** : Crie três `Checkbuttons`, cada um associado a uma cor (vermelho, verde e azul). Quando o `Checkbutton` for marcado, a cor correspondente deve ser aplicada como cor de fundo da janela.
1. **Checkbutton para Ativar/Desativar Funcionalidade** : Crie um `Checkbutton` que, quando marcado, ative uma função de temporizador que exibe a hora atual em um `Label` a cada segundo. Quando desmarcado, o temporizador deve ser desativado.

</details>

---

## `Radiobutton`

O **Radiobutton** permite a seleção de apenas uma opção entre várias. É usado quando o usuário deve escolher uma única opção em um grupo.

```python
radiobutton = tk.Radiobutton(parent, options...)
```

### parâmetros mais comuns

- **`parent`** (`Widget`) : a janela ou frame onde o widget será colocado (geralmente uma instância `Tk()` ou `Frame()`);
- **`text`** (`str`) : define o texto associado ao Radiobutton;
- **`variable`** (`IntVar()`) : uma variável do tipo `IntVar()` que armazena o valor da opção selecionada;
    - todos os `Radiobuttons` de um grupo devem compartilhar a mesma variável;
- **`value`** (`int`) : o valor atribuído à variável quando o Radiobutton está selecionado;
    - cada `Radiobutton` em um grupo deve ter um valor diferente;

### exemplo

```python
import tkinter as tk

def mostra_selecionados():
    label.config(text=f"Opção selecionada: {radio_var.get()}")

# criação da janela principal
janela = tk.Tk()
janela.title("Exemplo de Radiobutton")
janela.geometry("300x200")

# variável associada aos Radiobuttons
radio_var = tk.IntVar()

# criando Radiobuttons
radiobutton1 = tk.Radiobutton(janela, text="Opção 1", variable=radio_var, value=1)
radiobutton2 = tk.Radiobutton(janela, text="Opção 2", variable=radio_var, value=2)
radiobutton3 = tk.Radiobutton(janela, text="Opção 3", variable=radio_var, value=3)

radiobutton1.pack(padx=10, pady=5)
radiobutton2.pack(padx=10, pady=5)
radiobutton3.pack(padx=10, pady=5)

# criando um rótulo (Label)
label = tk.Label(janela, text="Nenhuma opção selecionada", font=("Arial", 12))
label.pack(padx=10, pady=10)

# botão para exibir a seleção
button = tk.Button(
    janela,
    text="Mostrar Seleção",
    command=mostra_selecionados,
    font=("Arial", 12))
button.pack(padx=10, pady=10)

# iniciando o loop de eventos
janela.mainloop()
```

- **`variable=radio_var`** : a variável `radio_var` armazena o valor da opção selecionada;
- **`value=1`, `value=2`, `value=3`** : define os valores associados a cada Radiobutton;

## exercícios `Radiobutton`

<details>
<summary>Lista de Exercícios</summary>

1. **Radiobutton Simples** : Crie três `Radiobuttons` com opções de cores ("Vermelho", "Verde", "Azul"). Exiba a cor selecionada em um `Label` quando qualquer um dos `Radiobuttons` for clicado.
1. **Radiobutton com Variável de Controle** : Crie quatro `Radiobuttons` (por exemplo, "Opção A", "Opção B", "Opção C" e "Opção D") vinculados a uma variável `IntVar`. Quando o usuário selecionar uma opção, exiba o valor correspondente em um `Label`.
1. **Radiobutton que Controla o Texto de um Label** : Crie três `Radiobuttons` com diferentes opções de saudação ("Bom dia", "Boa tarde", "Boa noite"). Quando o usuário selecionar uma saudação, o texto de um `Label` deve ser atualizado com a saudação escolhida.
1. **Formulário de Seleção de Gênero** : Crie um formulário com dois `Radiobuttons` para selecionar o gênero (por exemplo, "Masculino" e "Feminino"). Quando um botão "Enviar" for clicado, exiba a escolha em um `Label`.
1. **Radiobuttons Desativados e Habilitados Dinamicamente** : Crie três `Radiobuttons`, mas deixe-os inicialmente desativados (usando `state=DISABLED`). Adicione um `Checkbutton` que, quando marcado, habilite os `Radiobuttons`.
1. **Seleção de Opções de Tamanho** : Crie um conjunto de três `Radiobuttons` que permita selecionar tamanhos de camisetas ("Pequeno", "Médio", "Grande"). Exiba o tamanho selecionado em um `Label` e mostre uma mensagem de "Seleção inválida" caso nenhum tamanho tenha sido escolhido.
1. **Mudar a Cor de Fundo com Radiobutton** : Crie quatro `Radiobuttons` com opções de cores. Quando o usuário selecionar uma cor, altere a cor de fundo da janela para a cor correspondente.
1. **Radiobutton com Imagens** : Crie três `Radiobuttons`, cada um associado a uma imagem (como ícones de frutas: maçã, banana, uva). Ao selecionar um `Radiobutton`, exiba a imagem correspondente em um `Label`.
1. **Radiobutton que Controla Outras Funções** : Crie dois `Radiobuttons`, "Ativar" e "Desativar". Quando "Ativar" for selecionado, um `Entry` deve ser habilitado. Quando "Desativar" for selecionado, o `Entry` deve ser desabilitado.
1. **Radiobuttons com Função de Enquete** : Crie uma interface com cinco `Radiobuttons` representando diferentes faixas etárias (ex: "Menos de 18", "18-25", "26-35", "36-50", "Mais de 50"). Quando o usuário clicar em "Submeter", exiba a faixa etária selecionada em um `Label`.

</details>

---

## gerenciadores de layout

No Tkinter, há três principais gerenciadores de layout usados para posicionar widgets dentro de uma janela ou de um frame: **`pack()`**, **`grid()`** e **`place()`**. Cada um oferece diferentes formas de controle sobre a disposição dos widgets, permitindo desde layouts mais automáticos até configurações mais personalizadas.

### `pack`

O método **`pack()`** (um layout baseado em direção) organiza widgets em blocos, de acordo com a direção especificada. Ele é mais automático e simples, ideal quando se quer que os widgets sejam dispostos de maneira sequencial, um após o outro.

```python
widget.pack(options...)
```

#### parâmetros mais comuns

- **`side`** (`str`) : define de que lado da janela o widget será empacotado;
    - pode ser `"TOP"`, `"BOTTOM"`, `"LEFT"`, ou `"RIGHT"`;
    - o valor padrão é `"TOP"`;
- **`fill`** (`str`) : define como o widget vai preencher o espaço disponível;
    - pode ser `"NONE"` (não preenche), `"X"` (preenche horizontalmente), `"Y"` (preenche verticalmente) ou `"BOTH"` (preenche em ambas as direções);
- **`expand`** (`bool`) : define se o widget deve expandir para ocupar o espaço disponível;
    - quando `True`, o widget pode se expandir para preencher o espaço da janela;
- **`padx`** (`int`) : define a quantidade de espaço (em pixels) adicionado ao redor do widget, horizontalmente;
- **`pady`** (`int`) : define a quantidade de espaço (em pixels) adicionado ao redor do widget, verticalmente;

#### exemplo

```python
import tkinter as tk

# criação da janela principal
janela = tk.Tk()
janela.title("Exemplo de pack")
janela.geometry("300x200")

# widgets empacotados com diferentes lados
label_top = tk.Label(janela, text="Topo", bg="lightblue")
label_top.pack(side=tk.TOP, fill=tk.X)

label_bottom = tk.Label(janela, text="Embaixo", bg="lightgreen")
label_bottom.pack(side=tk.BOTTOM, fill=tk.X)

label_left = tk.Label(janela, text="Esquerda", bg="lightcoral")
label_left.pack(side=tk.LEFT, fill=tk.Y)

label_right = tk.Label(janela, text="Direita", bg="lightyellow")
label_right.pack(side=tk.RIGHT, fill=tk.Y)

# iniciando o loop de eventos
janela.mainloop()
```

- os widgets são empacotados em torno dos lados da janela, um após o outro, com base no parâmetro **`side`**;
- o parâmetro **`fill`** controla como os widgets se expandem dentro do eixo especificado;

#### todas opções

O código abaixo realiza praticamente todas as opções possíveis de layout usando o método `pack()`.

```python
import tkinter as tk

janela = tk.Tk()
janela.geometry()

for e, expand in enumerate([False, True]):
    for f, fill in enumerate([None, tk.X, tk.Y, tk.BOTH]):
        for s, side in enumerate([tk.TOP, tk.LEFT, tk.BOTTOM, tk.RIGHT]):
            posicao = f'+{s * 205 + 100 + e * 820}+{f * 235 + 100}'

            tpl_janela = tk.Toplevel(janela)
            tpl_janela.geometry('200x200'+posicao)

            texto = f"side='{side}'\nfill='{fill}'\nexpand={str(expand)}"

            lbl_etiqueta = tk.Label(
                tpl_janela,
                text=texto,
                bg=['#FF5555', '#55FF55'][e])
            lbl_etiqueta.pack(side=side, fill=fill, expand=expand)

janela.mainloop()
```

[Código Fonte Original](https://stackoverflow.com/questions/28089942/difference-between-fill-and-expand-options-for-tkinter-pack-method)

### `grid`

O método **`grid()`** (um layout baseado em grade) organiza os widgets em uma grade, semelhante a uma tabela. Cada widget é posicionado em uma célula específica (linha e coluna), e pode-se definir o alinhamento e o tamanho das células.

```python
widget.grid(row, column, options...)
```

#### parâmetros mais comuns

- **`row`** (`int`) : define a linha onde o widget será colocado (começando do índice `0`);
- **`column`** (`int`) : define a coluna onde o widget será colocado (começando do índice `0`);
- **`rowspan`** (`int`) : define quantas linhas o widget deve abranger;
- **`columnspan`** (`int`) : define quantas colunas o widget deve abranger;
- **`padx`** (`int`) : define a quantidade de espaço (em pixels) adicionada horizontalmente ao redor do widget;
- **`pady`** (`int`) : define a quantidade de espaço (em pixels) adicionada verticalmente ao redor do widget;
- **`sticky`** (`str`) : define o alinhamento dentro da célula;
    - pode usar combinações de direções (`"N"`, `"S"`, `"E"`, `"W"`), que se referem a Norte (cima), Sul (baixo), Leste (direita) e Oeste (esquerda);

#### exemplo

```python
import tkinter as tk

# criação da janela principal
janela = tk.Tk()
janela.title("Exemplo de grid")
janela.geometry("300x200")

# widgets organizados em uma grade
label1 = tk.Label(janela, text="Linha 0, Coluna 0", bg="lightblue")
label1.grid(row=0, column=0, padx=10, pady=10)

label2 = tk.Label(janela, text="Linha 0, Coluna 1", bg="lightgreen")
label2.grid(row=0, column=1, padx=10, pady=10)

label3 = tk.Label(janela, text="Linha 1, Coluna 0-1", bg="lightyellow")
label3.grid(row=1, column=0, columnspan=2, sticky="ew", padx=10, pady=10)

# iniciando o loop de eventos
janela.mainloop()
```

- o parâmetro **`row`** e **`column`** especificam a posição na grade;
- **`columnspan=2`** indica que o widget abrange duas colunas;
- **`sticky="ew"`** alinha o widget horizontalmente (preenchendo de leste a oeste);

### `place`

O método **`place()`** (um layout absoluto) permite que se defina a posição exata (em pixels) do widget dentro da janela ou do frame. Ele oferece o controle mais detalhado sobre o layout, ideal quando é necessário um posicionamento absoluto e preciso.

```python
widget.place(x, y, options...)
```

#### parâmetros mais comuns

- **`x`** (`int`) : define a posição horizontal do widget (em pixels a partir da borda esquerda);
- **`y`** (`int`) : define a posição vertical do widget (em pixels a partir da borda superior);
- **`relx`** (`float`) : define a posição horizontal relativa na janela, onde `0.0` é o início (esquerda) e `1.0` é o fim (direita);
- **`rely`** (`float`) : define a posição vertical relativa na janela, onde `0.0` é o início (topo) e `1.0` é o fim (fundo);
- **`anchor`** (`str`) : define qual parte do widget estará ancorada na posição especificada;
    - por exemplo, `"n"` para o topo, `"center"` para o centro, etc;
    - os valores podem ser uma combinação das direções (`"n"`, `"s"`, `"e"`, `"w"`, etc.);
- **`width`** (`int`) : define a largura do widget (em pixels);
- **`height`** (`int`) : define a altura do widget (em pixels).

#### exemplo

```python
import tkinter as tk

# criação da janela principal
janela = tk.Tk()
janela.title("Exemplo de place")
janela.geometry("300x200")

# widgets posicionados em coordenadas absolutas
label1 = tk.Label(janela, text="Posição (50, 50)", bg="lightblue")
label1.place(x=50, y=50)

label2 = tk.Label(janela, text="Posição (150, 100)", bg="lightgreen")
label2.place(x=150, y=100)

label3 = tk.Label(janela, text="Posição relativa", bg="lightyellow")
# centraliza o label
label3.place(relx=0.5, rely=0.5, anchor="center")

# iniciando o loop de eventos
janela.mainloop()
```

- **`x=50` e `y=50`** colocam o primeiro widget a 50 pixels da borda esquerda e superior;
- **`relx=0.5` e `rely=0.5`** colocam o terceiro widget no centro da janela, já que 0.5 corresponde a 50% da largura/altura;

### comparação

| Método   | Vantagens                                  | Desvantagens                                                   |
|----------|--------------------------------------------|----------------------------------------------------------------|
| **pack** | simples de usar, ideal para layouts lineares| pouca flexibilidade no controle fino do layout                 |
| **grid** | organiza widgets como uma grade, flexível   | um pouco mais complexo que `pack()`, não mistura bem com `pack()`|
| **place**| total controle sobre a posição dos widgets  | pode ser mais trabalhoso e menos responsivo em janelas redimensionadas|

Cada método tem seus pontos fortes e fracos. **`pack()`** é ótimo para layouts simples, **`grid()`** oferece uma estrutura de grade poderosa, e **`place()`** é ideal para controle absoluto de posicionamento.

## exercícios gerenciadores de layout

<details>
<summary>Lista de Exercícios</summary>

1. Exercícios com `pack`
    1. **Posicionamento Vertical Simples** : Crie três `Labels` com textos diferentes e posicione-os verticalmente usando o método `pack`.
    1. **Preenchimento Horizontal (fill=X)** : Crie um `Label` que ocupe toda a largura da janela (preenchimento horizontal) usando o parâmetro `fill=X` com o método `pack`.
    1. **Alinhamento à Esquerda e à Direita** : Crie dois `Labels`, um alinhado à esquerda e outro à direita da janela, utilizando o parâmetro `side` no método `pack`.
    1. **Expansão de Widgets (expand=True)** : Crie um `Label` que se expanda para preencher a janela ao ser redimensionada, utilizando o parâmetro `expand=True` no método `pack`.
    1. **Widgets sobrepostos** : Crie dois `Labels` e sobreponha-os na mesma posição, um sobre o outro, usando o método `pack`.
    1. **Margens Internas (pady, padx)** : Crie três `Buttons` com margens internas (`padx`, `pady`) e posicione-os verticalmente usando o método `pack`.
    1. **Widgets Horizontais (side=LEFT)** : Crie três `Buttons` dispostos horizontalmente, um ao lado do outro, utilizando `pack(side=LEFT)`.
    1. **Posicionamento com `anchor`** : Crie um `Label` que seja posicionado no canto inferior direito da janela usando `pack` com o parâmetro `anchor=SE`.
    1. **Alternando entre Vertical e Horizontal** : Crie cinco `Labels`, onde os três primeiros sejam dispostos verticalmente e os dois últimos horizontalmente, usando o método `pack`.
    1. **Centralização com Preenchimento** : Crie um `Label` centralizado horizontalmente e verticalmente com preenchimento usando `pack` e os parâmetros `fill=BOTH` e `expand=True`.
1. Exercícios com `grid`
    1. **Grid Básico** : Crie uma interface com três `Labels` posicionados em uma grade de 3x1 (três linhas e uma coluna) utilizando o método `grid`.
    1. **Múltiplos Widgets em Diferentes Linhas** : Crie três `Buttons` dispostos em três linhas separadas e uma coluna, usando `grid(row, column)`.
    1. **Colunas e Linhas Combinadas** : Crie uma interface com quatro `Labels`, onde dois `Labels` ocupem uma linha cada e os outros dois ocupem uma única linha (em duas colunas diferentes).
    1. **Colspan (Mesclar Colunas)** : Crie uma interface com três `Labels` e utilize o parâmetro `columnspan` para fazer um `Label` ocupar duas colunas.
    1. **Rowspan (Mesclar Linhas)** : Crie uma tabela de 3x3 usando `Labels` e faça o `Label` do meio (da segunda linha) ocupar duas linhas usando o parâmetro `rowspan`.
    1. **Espaçamento Interno com `padx` e `pady`** : Crie três `Labels` dispostos horizontalmente em uma única linha e adicione espaçamento interno utilizando `padx` e `pady`.
    1. **Espaçamento Externo com `ipadx` e `ipady`** : Crie três `Buttons` dispostos verticalmente e adicione espaçamento interno utilizando `ipadx` e `ipady` para aumentar o espaço dentro dos botões.
    1. **Alinhamento em Células** : Crie um grid de 2x2 com `Labels` e utilize o parâmetro `sticky` para alinhar os `Labels` em diferentes direções (norte, sul, leste, oeste).
    1. **Expandir Widgets em Linhas e Colunas** : Crie um layout 2x2 e faça os widgets preencherem suas células, expandindo conforme o redimensionamento da janela, utilizando `sticky="nsew"`.
    1. **Grid com Margens Internas e Externas** : Crie uma tabela de 2x2 com widgets `Button` e adicione espaçamento entre as células e dentro dos botões usando `padx`, `pady`, `ipadx` e `ipady`.
1. Exercícios com `place`
    1. **Posicionamento Absoluto Simples** : Crie três `Labels` e posicione-os em coordenadas absolutas específicas dentro da janela utilizando o método `place` com `x` e `y`.
    1. **Redimensionamento com Relativo (`relx`, `rely`)** : Crie um `Button` e posicione-o na metade exata da largura e altura da janela utilizando o método `place` com coordenadas relativas (`relx=0.5`, `rely=0.5`).
    1. **Posicionamento Relativo com Tamanho Relativo** : Crie um `Label` que ocupe 50% da largura e da altura da janela, utilizando `relwidth` e `relheight` no método `place`.
    1. **Posicionamento com Ancoragem (`anchor`)** : Crie um `Label` e posicione-o no canto inferior direito da janela utilizando o método `place` com o parâmetro `anchor=SE`.
    1. **Movendo Widgets Relativamente** : Crie três `Labels` que sejam dispostos um ao lado do outro em uma linha, cada um com `relx` aumentado progressivamente (0.1, 0.3, 0.5), usando `place`.
    1. **Widgets Sobrepostos com `place`** : Crie dois `Labels` e sobreponha-os na mesma posição na janela utilizando o método `place`.
    1. **Botão Centralizado na Janela** : Crie um `Button` que permaneça sempre centralizado na janela, mesmo quando a janela for redimensionada, utilizando `place(relx=0.5, rely=0.5, anchor=CENTER)`.
    1. **Posicionamento Relativo e Absoluto Juntos** : Crie um `Label` que seja posicionado horizontalmente de forma relativa (`relx=0.3`), mas verticalmente com uma posição absoluta (`y=100`), usando `place`.
    1. **Posicionar Widget no Topo com Altura Fixa** : Crie um `Button` que esteja sempre fixo no topo da janela (0 de altura absoluta) e que ocupe toda a largura da janela, independentemente do redimensionamento, usando `place(relwidth=1, y=0)`.
    1. **Redimensionar e Reposicionar Widgets com `place`** : Crie três widgets (`Button`, `Label` e `Entry`) que mudem de posição e tamanho ao redimensionar a janela, utilizando valores relativos para `relx`, `rely`, `relwidth` e `relheight` com o método `place`.

</details>

---

## variáveis

No Tkinter, além de usar variáveis Python normais, há um conjunto especial de **variáveis de controle** que são projetadas para armazenar e rastrear valores que são associados a widgets interativos. Essas variáveis são necessárias quando se quer vincular o estado de um widget com um valor dinâmico (como entradas de texto, seleção de botões de rádio, checkbuttons, etc.). Essas variáveis são subclasses do tipo especial `Variable`, projetado para facilitar a interação entre o código e os widgets.

O Tkinter fornece quatro principais tipos de variáveis de controle, cada uma projetada para lidar com diferentes tipos de dados:

1. **`StringVar`** : variável para armazenar strings (texto);
1. **`IntVar`** : variável para armazenar inteiros;
1. **`DoubleVar`** : variável para armazenar números de ponto flutuante (float);
1. **`BooleanVar`** : variável para armazenar valores booleanos (`True` ou `False`);

Cada uma dessas variáveis possui métodos que permitem obter e definir o valor associado, e elas são comumente usadas com widgets que precisam manter um valor dinâmico, como `Entry`, `Checkbutton`, `Radiobutton`, e outros.

### `StringVar`

A variável `StringVar` (String Variable) é usada para armazenar e gerenciar valores de texto. É útil para widgets como `Entry`, `Label`, e `OptionMenu`.

- **`get()`** : retorna o valor armazenado;
- **`set(value)`** : define um novo valor para a variável;

#### exemplo

```python
import tkinter as tk

# criando a janela principal
janela = tk.Tk()
janela.title("Exemplo com StringVar")
janela.geometry("300x200")

# criando um StringVar
nome_var = tk.StringVar()

# função que será chamada ao pressionar o botão
def exibir_nome():
    print("Nome:", nome_var.get())  # Obtém o valor da StringVar

# criando um Entry ligado ao StringVar
entry_nome = tk.Entry(janela, textvariable=nome_var)
entry_nome.pack(pady=10)

# botão que exibe o valor inserido
btn_mostrar = tk.Button(janela, text="Exibir Nome", command=exibir_nome)
btn_mostrar.pack(pady=10)

# iniciando o loop de eventos
janela.mainloop()
```

- **`textvariable=nome_var`** : liga o valor digitado no widget `Entry` à variável `nome_var`; qualquer alteração no `Entry` também modifica o valor da `StringVar`, e vice-versa;
- **`nome_var.get()`** : obtém o valor atual da variável, que neste caso, é o texto inserido no campo de entrada;

### `IntVar`

A variável `IntVar` (Integer Variable) é usada para armazenar valores inteiros. É comumente utilizada em widgets como `Radiobutton` e `Checkbutton`.

- **`get()`** : retorna o valor armazenado;
- **`set(value)`** : define um novo valor para a variável;

#### exemplo

```python
import tkinter as tk

# criando a janela principal
janela = tk.Tk()
janela.title("Exemplo com IntVar")
janela.geometry("300x200")

# criando uma IntVar
opcao_var = tk.IntVar()

# função que exibe a opção selecionada
def exibir_opcao():
    print("Opção selecionada:", opcao_var.get())

# criando Radiobuttons associados ao IntVar
radio1 = tk.Radiobutton(janela, text="Opção 1", variable=opcao_var, value=1)
radio1.pack(pady=5)
radio2 = tk.Radiobutton(janela, text="Opção 2", variable=opcao_var, value=2)
radio2.pack(pady=5)

# botão que exibe a opção selecionada
btn_exibir = tk.Button(janela, text="Exibir Opção", command=exibir_opcao)
btn_exibir.pack(pady=10)

# iniciando o loop de eventos
janela.mainloop()
```

- **`variable=opcao_var`** : liga a variável `IntVar` ao grupo de `Radiobuttons`; o valor da variável é alterado quando um botão de rádio é selecionado;
- **`value=1`, `value=2`** : cada `Radiobutton` tem um valor associado, que será atribuído a `opcao_var` quando o botão for selecionado;

### `DoubleVar`

A variável `DoubleVar` (Double Variable) é usada para armazenar números de ponto flutuante (números decimais).

- **`get()`** : retorna o valor armazenado;
- **`set(value)`** : define um novo valor para a variável;

#### exemplo

```python
import tkinter as tk

# criando a janela principal
janela = tk.Tk()
janela.title("Exemplo com DoubleVar")
janela.geometry("300x200")

# criando uma DoubleVar
valor_var = tk.DoubleVar(value=1.0)

# função para exibir o valor
def exibir_valor():
    print("Valor atual:", valor_var.get())

# etiqueta exibindo o valor inicial
label = tk.Label(janela, textvariable=valor_var)
label.pack(pady=10)

# botão para exibir o valor no terminal
btn_exibir = tk.Button(janela, text="Exibir Valor", command=exibir_valor)
btn_exibir.pack(pady=10)

# Iniciando o loop de eventos
janela.mainloop()
```

- **`DoubleVar()`** : armazena valores flutuantes; é possível inicializar a variável passando um valor como argumento (por exemplo, `1.0`);
- **`textvariable=valor_var`** : o `Label` exibe o valor armazenado na variável, que pode ser atualizado em tempo real;

### `BooleanVar`

A variável `BooleanVar` (Boolean Variable) armazena valores booleanos (`True` ou `False`). É útil para widgets como `Checkbutton`.

- **`get()`** : retorna `True` ou `False`;
- **`set(value)`** : define o valor para `True` ou `False`;

#### exemplo

```python
import tkinter as tk

# criando a janela principal
janela = tk.Tk()
janela.title("Exemplo com BooleanVar")
janela.geometry("300x200")

# criando uma BooleanVar
opcao = tk.BooleanVar()

# função para exibir o estado do checkbox
def exibir_estado():
    print("Checkbox está selecionado?", opcao.get())

# criando o Checkbutton ligado à BooleanVar
check_button = tk.Checkbutton(janela, text="Aceitar Termos", variable=opcao)
check_button.pack(pady=10)

# botão que exibe o estado do checkbox
btn_verificar = tk.Button(janela, text="Verificar", command=exibir_estado)
btn_verificar.pack(pady=10)

# iniciando o loop de eventos
janela.mainloop()
```

- **`variable=opcao`** : liga o estado do `Checkbutton` à variável `BooleanVar`. Quando o botão é marcado, o valor de `opcao` é `True`; caso contrário, é `False`;
- **`opcao.get()`** : retorna o estado atual do `Checkbutton`;

## exercícios variáveis

<details>
<summary>Lista de Exercícios</summary>

1. Exercícios com `StringVar`
    1. **Exibição Simples de Texto** : Crie um programa onde o texto de um `Label` seja controlado por uma `StringVar`. O `Label` deve atualizar automaticamente ao modificar o valor da variável.
    1. **Entrada de Texto Dinâmica** : Crie um programa com um `Entry` e um `Label`. Use uma `StringVar` para conectar o texto do `Entry` ao `Label`, de forma que o `Label` atualize conforme o texto é digitado.
    1. **Combinação de Texto** : Crie dois `Entry` widgets para o primeiro e o último nome. Use duas variáveis `StringVar` para capturar o conteúdo, combiná-los e exibir o nome completo em um `Label`.
    1. **Validação de Entrada** : Crie um `Entry` conectado a uma `StringVar`. Sempre que o texto for modificado, verifique se o valor inserido é um nome válido (sem números) e exiba uma mensagem de erro em um `Label`.
    1. **Alteração de Texto ao Clicar em um Botão** : Crie um `Button` que, quando clicado, altere o valor de uma `StringVar` e atualize um `Label` com o novo valor.
    1. **Atualização Condicional** : Crie dois `Entry` widgets e uma `StringVar` para cada um. Quando ambos os campos forem preenchidos, mostre um `Label` com uma mensagem de boas-vindas usando os dois nomes combinados.
    1. **Concatenação de Valores** : Crie três `Entry` widgets (nome, sobrenome e cidade) com três variáveis `StringVar`. Exiba um `Label` que mostre uma frase concatenando esses valores.
    1. **Troca de Valores entre Widgets** : Crie dois `Entry` widgets com uma `StringVar` para cada. Adicione um botão que troque os valores entre os dois `Entry`.
    1. **Manipulação com Expressões Regulares** : Crie um `Entry` com uma `StringVar` para capturar um número de telefone. Valide o número inserido em tempo real, exibindo uma mensagem de erro se o formato estiver incorreto (por exemplo, "(XX) XXXX-XXXX").
    1. **Interagir com Menu** : Crie um menu suspenso (`OptionMenu`) que exibe uma lista de opções. Use uma `StringVar` para armazenar a opção selecionada e mostre a escolha em um `Label`.
1. Exercícios com `IntVar`
    1. **Exibição Simples de Número** : Crie um `Label` que exibe o valor de uma `IntVar`. Quando o valor da variável mudar, o `Label` deve ser atualizado automaticamente.
    1. **Contador com Botões** : Crie dois `Buttons` para incrementar e decrementar o valor de uma `IntVar`. Mostre o valor atual em um `Label`.
    1. **Controle de Volume Simples** : Crie uma interface que simule um controle de volume com um `Scale` horizontal. Use uma `IntVar` para capturar o valor e exiba o nível de volume em um `Label`.
    1. **Controle de Números Impares e Pares** : Crie dois `Radiobuttons` com valores de uma `IntVar`. Um deve selecionar números ímpares e o outro números pares. Ao clicar, exiba uma lista de números ímpares ou pares em um `Label`.
    1. **Somador de Valores** : Crie três `Entry` widgets, cada um conectado a uma `IntVar`. Mostre a soma dos três valores em um `Label` e atualize o resultado em tempo real.
    1. **Verificador de Par ou Ímpar** : Crie um `Entry` onde o usuário insere um número inteiro. Utilize uma `IntVar` para capturar o valor e exiba em um `Label` se o número é par ou ímpar.
    1. **Seleção de Opções Numéricas** : Crie um conjunto de cinco `Radiobuttons`, cada um representando um número de 1 a 5. Utilize uma `IntVar` para armazenar a seleção e exiba o valor escolhido em um `Label`.
    1. **Atualização Automática de Números** : Crie uma interface com um `Scale` e um `Label`. Use uma `IntVar` para conectar o `Scale` ao `Label` e exiba o valor do `Scale` conforme ele é movido.
    1. **Calculadora de Fatorial** : Crie um `Entry` para inserir um número inteiro e um `Button` que, ao ser clicado, calcule e exiba o fatorial do número usando uma `IntVar`.
    1. **Controle de Alternância com Checkbuttons** : Crie quatro `Checkbuttons` cada um ligado a uma `IntVar`. Adicione um botão que exiba o valor numérico resultante da combinação dos `Checkbuttons` marcados.
1. Exercícios com `DoubleVar`
    1. **Exibição Simples de Valor Decimal** : Crie um `Label` que exibe o valor de uma `DoubleVar`. O `Label` deve ser atualizado automaticamente ao alterar a variável.
    1. **Conversão de Moeda** : Crie um `Entry` onde o usuário insere um valor em dólares. Use uma `DoubleVar` para capturar o valor e exiba a conversão em reais usando uma taxa de câmbio fictícia.
    1. **Calculadora de Desconto** : Crie um `Entry` para inserir o preço original de um produto e um `Scale` para ajustar o percentual de desconto. Use uma `DoubleVar` para capturar esses valores e exibir o preço final com desconto.
    1. **Cálculo de IMC (Índice de Massa Corporal)** : Crie dois `Entry` widgets para o usuário inserir peso (em kg) e altura (em metros). Use `DoubleVar` para capturar esses valores e calcular o IMC, exibindo o resultado em um `Label`.
    1. **Controle de Precisão Decimal** : Crie um `Scale` que permite selecionar valores decimais entre 0.0 e 10.0. Use uma `DoubleVar` para armazenar o valor e exiba-o com 2 casas decimais em um `Label`.
    1. **Conversor de Temperatura** : Crie uma interface com um `Entry` para o usuário inserir uma temperatura em Celsius. Use uma `DoubleVar` para converter o valor para Fahrenheit e exibi-lo em um `Label`.
    1. **Calculadora de Juros Simples** : Crie três `Entry` widgets para inserir o valor principal, taxa de juros anual e número de anos. Use `DoubleVar` para capturar esses valores e calcular o valor total após os juros.
    1. **Medidor de Distância** : Crie uma interface com um `Entry` onde o usuário insere uma distância em quilômetros. Converta esse valor para milhas utilizando uma `DoubleVar` e exiba o resultado em um `Label`.
    1. **Multiplicação Automática** : Crie dois `Entry` widgets para o usuário inserir dois números decimais. Use `DoubleVar` para multiplicá-los e exiba o resultado em um `Label`.
    1. **Simulador de Investimento** : Crie uma interface onde o usuário insere o valor inicial e a taxa de crescimento anual. Use uma `DoubleVar` para calcular o valor acumulado após 5 anos e exibi-lo em um `Label`.
1. Exercícios com `BooleanVar`
    1. **Checkbutton Simples** : Crie um `Checkbutton` que altera uma `BooleanVar`. Exiba o estado atual (True ou False) em um `Label`.
    1. **Botão de Ativação/Desativação** : Crie um `Button` que alterna o valor de uma `BooleanVar` entre True e False a cada clique e atualiza um `Label` com o valor atual.
    1. **Simulação de Lâmpada** : Crie uma interface com um `Checkbutton` que simula uma lâmpada. Quando marcado, exiba "Ligada", e quando desmarcado, exiba "Desligada", usando uma `BooleanVar`.
    1. **Habilitar/Desabilitar Widgets** : Crie um `Checkbutton` que habilita e desabilita um `Entry` widget ao marcar e desmarcar, controlado por uma `BooleanVar`.
    1. **Radiobutton com BooleanVar** : Crie dois `Radiobuttons` com opções "Ativado" e "Desativado". Use uma `BooleanVar` para controlar a seleção e exiba o valor atual em um `Label`.
    1. **Alternância entre Estados** : Crie dois `Buttons`, um para definir uma `BooleanVar` como `True` e outro para definir como `False`. Mostre o valor da variável em um `Label`.
    1. **Botão de Validação** : Crie um `Button` que só possa ser clicado se uma `BooleanVar` for `True`. Controle o estado do botão com um `Checkbutton` ligado a essa variável.
    1. **Simulação de Login** : Crie um sistema de login onde um `Checkbutton` deve ser marcado para lembrar a senha. Use uma `BooleanVar` para controlar a opção.
    1. **Seleção de Opções** : Crie três `Checkbuttons` para representar opções de um questionário. Use `BooleanVar` para cada uma e exiba uma mensagem com as opções selecionadas ao clicar em um botão.
    1. **Aplicação de Estilo** : Crie um `Checkbutton` que ativa ou desativa uma cor de fundo para a janela. Use uma `BooleanVar` para controlar a mudança de cor.

</details>

## callback

Um **callback** é uma função que é passada como argumento para outra função e é chamada em um momento posterior, geralmente em resposta a um evento. No contexto do Tkinter, callbacks são usados para manipular eventos de interface do usuário, como cliques em botões, seleções em listas, movimentação do mouse, e assim por diante. Quando um evento específico ocorre, o Tkinter executa a função de callback associada a esse evento.

### por que usar

- **interatividade** : callbacks permitem que se crie interfaces interativas. Quando um usuário interage com a interface (por exemplo, clicando em um botão), o callback permite que execute uma ação em resposta a essa interação;

- **separação de lógica** : callbacks ajudam a manter a lógica da interface separada do restante do código, facilitando a manutenção e a legibilidade;

### exemplo

```python
import tkinter as tk

def meu_callback():
    print("Botão clicado!")

janela = tk.Tk()
botao = tk.Button(janela, text="Clique aqui", command=meu_callback)
botao.pack()
janela.mainloop()
```

Quando clica no botão, a mensagem "Botão clicado!" será impressa no console.

### widgets de entrada

É tabmém possível usar callbacks para manipular valores de entrada de widgets como `Entry` ou `Listbox`.

**Exemplo**

```python
import tkinter as tk

def mostrar_texto():
    texto = entrada.get()
    print(f"Texto digitado: {texto}")

janela = tk.Tk()

entrada = tk.Entry(janela)
entrada.pack()

botao = tk.Button(janela, text="Mostrar Texto", command=mostrar_texto)
botao.pack()

janela.mainloop()
```

Neste exemplo, o botão exibe o texto que foi digitado no campo de entrada quando clicado.

### vários

Pode-se associar múltiplos callbacks a um único evento, ou usar o mesmo callback para diferentes widgets.

**Exemplo**

```python
import tkinter as tk

def botao_clicado(nome):
    print(f"{nome} foi clicado!")

janela = tk.Tk()

botao1 = tk.Button(janela, text="Botão 1", command=lambda: botao_clicado("Botão 1"))
botao1.pack()

botao2 = tk.Button(janela, text="Botão 2", command=lambda: botao_clicado("Botão 2"))
botao2.pack()

janela.mainloop()
```

## tkinter e `lambda`

A função [`lambda`](funcoes.md#lambda) é uma maneira de criar funções anônimas em Python. No contexto do Tkinter, as funções `lambda` são frequentemente usadas para fornecer um modo conveniente de passar argumentos para as funções de callback associadas a eventos, como cliques de botões ou seleções de menu.

### por que usar

Quando se associa uma função a um evento (por exemplo, o clique de um botão) usando o parâmetro `command`, pode-se querer passar parâmetros para essa função. Uma função `lambda` permite que se faça isso de forma concisa.

### exemplos

1. **Passando Parâmetros Simples**

    Suponha que se queira criar um botão que exibe uma mensagem personalizada ao ser clicado. Pode-se usar `lambda` para passar o nome para a função de callback.

    ```python
    import tkinter as tk

    def exibir_mensagem(nome):
        print(f"Olá, {nome}!")

    janela = tk.Tk()

    # usando lambda para passar o argumento
    botao = tk.Button(janela, text="Clique aqui", command=lambda: exibir_mensagem("Schwarzenegger"))
    botao.pack()

    janela.mainloop()
    ```

    Neste exemplo, quando o botão é clicado, a função `exibir_mensagem` é chamada com o argumento `"Schwarzenegger"`.

2. **Acessando Variáveis de Entrada**

    Pode-se usar `lambda` para acessar o valor de um widget `Entry` e passá-lo para uma função.

    ```python
    import tkinter as tk

    def mostrar_texto(texto):
        print(f"Texto digitado: {texto}")

    janela = tk.Tk()

    entrada = tk.Entry(janela)
    entrada.pack()

    # usando lambda para passar o valor da entrada
    botao = tk.Button(janela, text="Mostrar Texto", command=lambda: mostrar_texto(entrada.get()))
    botao.pack()

    janela.mainloop()
    ```

    Aqui, a função `mostrar_texto` recebe o valor atual do widget `Entry` quando o botão é clicado.

3. **Múltiplos Argumentos**

    Também pode-se passar múltiplos argumentos usando `lambda`.

    ```python
    import tkinter as tk

    def somar(a, b):
        print(f"A soma é: {a + b}")

    janela = tk.Tk()

    # usando lambda para passar múltiplos argumentos
    botao = tk.Button(janela, text="Somar", command=lambda: somar(5, 10))
    botao.pack()

    janela.mainloop()
    ```

    Nesse exemplo, a função `somar` é chamada com os valores `5` e `10`.

## exercícios tkinter e `lambda`

<details>
<summary>Lista de Exercícios</summary>

1. Crie uma janela Tkinter com um botão que, ao ser clicado, exibe uma mensagem "Botão clicado!" usando uma função lambda.
1. Crie um campo de entrada (`Entry`) e um botão. Quando o botão for clicado, o texto digitado no campo de entrada deve ser exibido em um rótulo (`Label`), utilizando uma função lambda.
1. Crie dois botões: um que aumenta um contador e outro que diminui o contador. Use uma função lambda para atualizar o valor do contador em um rótulo.
1. Crie um aplicativo simples que permite ao usuário digitar um número e um botão que, ao ser clicado, calcula o dobro desse número e exibe o resultado em um rótulo, utilizando `lambda`.
1. Crie uma janela Tkinter com três botões que mudam a cor de fundo da janela. Use funções `lambda` para definir a cor em cada botão.
1. Crie uma aplicação com um `Listbox` e dois botões. Um botão deve adicionar um item ao `Listbox`, enquanto o outro deve remover o item selecionado. Utilize `lambda` para as funções de ação.
1. Faça um aplicativo com um campo de entrada onde o usuário pode digitar seu nome e um botão que, ao ser clicado, exibe uma saudação personalizada ("Olá, [nome]!"). Utilize uma função `lambda`.
1. Crie um aplicativo que tenha uma caixa de seleção (`Checkbutton`). Quando a caixa estiver marcada, um rótulo deve mostrar "Selecionado", e quando desmarcada, deve mostrar "Não selecionado". Use `lambda` para atualizar o rótulo.
1. Crie um aplicativo que possui três `Radiobuttons`, cada um representando uma cor (vermelho, verde, azul). Quando o usuário seleciona uma cor, a cor de fundo da janela deve mudar, usando `lambda`.
1. Faça um aplicativo que tem um botão que, quando clicado, exibe a soma de dois números digitados em dois campos de entrada (`Entry`). Utilize `lambda` para a função de soma.
1. Crie um aplicativo onde o usuário pode selecionar um número de um `Listbox`. Um botão deve mostrar o quadrado desse número em um rótulo, utilizando uma função `lambda`.
1. Faça uma janela que tem um campo de entrada para o usuário digitar um texto. Adicione um botão que exibe o texto em maiúsculas em um rótulo ao ser clicado, usando `lambda`.
1. Crie um aplicativo com dois campos de entrada para números. Um botão deve multiplicar esses números e mostrar o resultado em um rótulo. Utilize `lambda` para a operação.
1. Faça uma janela com um botão que gera um número aleatório entre 1 e 100. Quando clicado, o número gerado deve ser exibido em um rótulo, usando `lambda`.
1. Crie um aplicativo que tenha uma caixa de entrada e um botão que, ao ser clicado, transforma o texto em uma string reversa e exibe o resultado em um rótulo, utilizando `lambda`.
1. Crie um aplicativo onde o usuário pode selecionar uma opção de uma lista de frutas. Um botão deve mostrar a fruta selecionada em um rótulo, usando uma função `lambda`.
1. Faça um aplicativo com um botão que, quando clicado, muda a imagem de fundo da janela entre duas imagens diferentes usando `lambda`.
1. Crie um aplicativo com um campo de entrada e um botão que calcula a raiz quadrada do número digitado e exibe o resultado em um rótulo, utilizando `lambda`.
1. Faça uma janela com três botões que mostram diferentes mensagens em um rótulo. Use `lambda` para cada botão para exibir uma mensagem específica.
1. Crie um aplicativo com uma caixa de texto (`Text`) e um botão que, ao ser clicado, conta o número de palavras digitadas na caixa de texto e exibe o resultado em um rótulo. Utilize `lambda` para a contagem.

</details>

## método `trace()`

O método `trace` é uma função disponível nas variáveis de controle do Tkinter, como `StringVar`, `IntVar`, `DoubleVar`, e `BooleanVar`. Ele permite que mudanças em uma variável sejam "rastreadas", ou seja, pode-se definir uma função (callback) que será chamada automaticamente sempre que o valor da variável for alterado.

### como funciona

Quando o `trace` é usado, é possível especificar três aspectos :

1. **Modo de Rastreio** : pode-se escolher quando a função de callback deve ser chamada. Os modos mais comuns são:
    - `"r"`: chamado quando a variável é lida;
    - `"w"`: chamado quando a variável é escrita (ou seja, seu valor é alterado);
    - `"u"`: chamado quando a variável é atualizada (que pode incluir leitura ou escrita);

2. **Índice de Variável** : um índice que permite selecionar qual variável está sendo rastreada. Isso é útil quando há várias variáveis e deseja rastrear mudanças em uma delas;

3. **Callback** : a função que será chamada quando a variável mudar. Esta função pode receber três argumentos: o nome da variável, o índice e o modo de rastreamento;

### exemplo

Aqui está um exemplo que ilustra o uso do `trace` com um `Entry` e um `Label`:

```python
import tkinter as tk

def meu_callback(nome, indice, modo):
    texto_atual = texto_var.get()
    label.config(text=f"Você digitou: {texto_atual}")

janela = tk.Tk()
janela.title("Exemplo de trace")

# criando uma StringVar
texto_var = tk.StringVar()

# usando o método trace para rastrear mudanças
texto_var.trace("w", meu_callback)

# criando um Entry
entrada = tk.Entry(janela, textvariable=texto_var)
entrada.pack(pady=10)

# criando um Label para mostrar o texto
label = tk.Label(janela, text="")
label.pack(pady=10)

janela.mainloop()
```

- **Importação e Janela Principal** : o exemplo começa importando o Tkinter e criando a janela principal;
- **StringVar e Trace** : a `StringVar` `texto_var` é criada, e o método `trace` é utilizado para associar a função `meu_callback` ao modo de escrita;
- **Widgets** : um `Entry` é criado, e a `StringVar` é ligada a ele, permitindo que qualquer mudança no campo de entrada atualize automaticamente a variável. Um `Label` é criado para exibir o texto digitado;
- **Callback** : sempre que o texto no `Entry` é alterado, o `meu_callback` é chamado, e ele atualiza o `Label` com o texto atual;

### vantagens

- **Reatividade** : o método `trace` torna o aplicativo mais interativo, permitindo que ações sejam executadas automaticamente em resposta a alterações na interface do usuário;

- **Separação de Lógica** : é possível manter a lógica da interface do usuário separada do restante do código, facilitando a manutenção;

## exercícios `trace()`

<details>
<summary>Lista de Exercícios</summary>

1. Crie um aplicativo onde o usuário pode digitar um texto em um campo de entrada (`Entry`). Use `trace` para atualizar um rótulo (`Label`) que exibe o texto em tempo real à medida que o usuário digita.
1. Crie uma janela com um campo de entrada que aceita apenas números. Utilize uma variável `StringVar` e `trace` para validar a entrada e garantir que apenas dígitos sejam permitidos.
1. Faça um aplicativo que possui dois campos de entrada (`Entry`). Quando o texto de um dos campos for alterado, use `trace` para atualizar o segundo campo com o mesmo valor em tempo real.
1. Crie um aplicativo com um campo de entrada onde o usuário pode digitar um número. Utilize `trace` para monitorar mudanças e, quando o número for alterado, mostre seu quadrado em um rótulo.
1. Desenvolva um aplicativo com uma variável `IntVar` que rastreia a quantidade de itens em uma lista. Utilize `trace` para atualizar um rótulo que mostra a quantidade total de itens sempre que a variável é alterada.
1. Crie um aplicativo onde o usuário pode selecionar uma opção de uma lista (`Listbox`). Use `trace` para monitorar a seleção e exibir a opção escolhida em um rótulo sempre que mudar.
1. Crie um aplicativo que tenha um botão para adicionar itens a um `Listbox`. Utilize uma variável `StringVar` e `trace` para atualizar o número de itens exibidos em um rótulo sempre que um novo item for adicionado.
1. Desenvolva um aplicativo com dois campos de entrada. Um deve aceitar um valor de taxa de juros, e o outro um valor principal. Utilize `trace` para calcular e exibir o montante total em um rótulo sempre que qualquer um dos campos for alterado.
1. Crie uma janela onde o usuário pode escolher entre várias opções (como "Sim" ou "Não") usando `Radiobuttons`. Use `trace` para atualizar um rótulo que exibe a opção escolhida em tempo real.
1. Faça um aplicativo onde o usuário pode digitar um texto em um campo de entrada e, ao digitar, o número de caracteres deve ser mostrado em um rótulo. Utilize `trace` para contar e exibir o número de caracteres à medida que o texto é alterado.

</details>

## `messagebox`

O módulo `messagebox` do Tkinter é utilizado para exibir janelas de diálogo predefinidas (alertas, avisos, confirmações e perguntas) e interativas que mostram mensagens ao usuário e, em alguns casos, permitem que ele responda a essas mensagens. Essas janelas são muito úteis em aplicativos GUI para informar o usuário sobre eventos importantes, confirmar ações ou exibir erros.

As janelas de diálogo criadas por ele são modais, o que significa que, enquanto estiverem abertas, bloqueiam a interação com o resto da interface até que o usuário responda à mensagem.

Essas caixas de diálogo podem conter botões de interação como "Ok", "Cancelar", "Sim", "Não", dependendo do tipo de mensagem que se deseja exibir.

### como funciona

O `messagebox` é invocado usando funções que exibem a mensagem desejada e retornam um valor com base na interação do usuário (por exemplo, "OK", "Yes", "No"). O valor retornado pode ser utilizado para controlar o fluxo do programa, como, por exemplo, proceder com uma ação se o usuário confirmar ou cancelar.

Veja uma tabela das funções do `messagebox` :

| Função | Parâmetros | Retorno | Descrição |
|----|----|----|----|
| `showinfo()` | **`title`** (`str`), **`message`** (`str`) | notificação de conclusão de uma tarefa | exibe uma caixa de mensagem informativa para o usuário |
| `showwarning()` | **`title`** (`str`), **`message`** (`str`) | avisar sobre exclusão de dados | exibe uma caixa de aviso para alertar o usuário sobre uma situação que exige atenção |
| `showerror()` | **`title`** (`str`), **`message`** (`str`) | notificar falhas ou erros em operações | exibe uma caixa de erro para notificar o usuário sobre um problema ocorrido |
| `askquestion()` | **`title`** (`str`), **`message`** (`str`) | `"yes"` ou `"no"` | exibe uma caixa de pergunta e retorna `'yes'` ou `'no'` dependendo da resposta do usuário |
| `askokcancel()` | **`title`** (`str`), **`message`** (`str`) | `True` (OK) ou `False` (Cancelar) | exibe uma caixa de confirmação com as opções "OK" e "Cancelar"; retorna `True` ou `False.|
| `askretrycancel()` | **`title`** (`str`), **`message`** (`str`) | `True` (Repetir) ou `False` (Cancelar) | exibe uma caixa com as opções "Tentar Novamente" e "Cancelar"; retorna `True` ou `False.|
| `askyesno()` | **`title`** (`str`), **`message`** (`str`) | `True` (Sim) ou `False` (Não) | exibe uma caixa com as opções "Sim" e "Não"; retorna `True` para "Sim" e `False` para "Não.|
| `askyesnocancel()` | **`title`** (`str`), **`message`** (`str`) | `True` (Sim), `False` (Não), `None` (Cancelar) | exibe uma caixa com as opções "Sim", "Não" e "Cancelar"; retorna `True`, `False` ou `None.|

### `showinfo()`

A função `showinfo()` é usada para exibir uma caixa de mensagem informativa. Ela normalmente é utilizada para informar o usuário sobre o sucesso de uma operação ou para fornecer uma mensagem geral.

```python
messagebox.showinfo(title="Título", message="Sua mensagem informativa.")
```

Onde :
- **`title`** (`str`) : o título da janela de diálogo;
- **`message`** (`str`) : a mensagem informativa a ser exibida ao usuário;

**Exemplo :**
```python
import tkinter as tk
from tkinter import messagebox

def show_info():
    messagebox.showinfo("Informação", "A operação foi concluída com sucesso!")

janela = tk.Tk()
janela.title("Exemplo showinfo")

info_button = tk.Button(janela, text="Mostrar Informação", command=show_info)
info_button.pack(pady=20)

janela.mainloop()
```

**Explicação** : quando o botão "Mostrar Informação" é clicado, a função `show_info()` exibe uma caixa de mensagem informativa com o título "Informação" e a mensagem "A operação foi concluída com sucesso!".

---

### `showwarning()`

A função `showwarning()` é usada para exibir uma caixa de mensagem de aviso. Essa função é útil para alertar o usuário sobre uma situação que pode exigir atenção, como uma operação potencialmente perigosa ou irreversível.

```python
messagebox.showwarning(title="Título", message="Sua mensagem de aviso.")
```

Onde :
- **`title`** (`str`) : o título da janela de diálogo;
- **`message`** (`str`) : a mensagem de aviso a ser exibida ao usuário;

**Exemplo :**
```python
import tkinter as tk
from tkinter import messagebox

def show_warning():
    messagebox.showwarning("Aviso", "Essa ação pode causar perda de dados!")

root = tk.Tk()
root.title("Exemplo showwarning")

warning_button = tk.Button(root, text="Mostrar Aviso", command=show_warning)
warning_button.pack(pady=20)

root.mainloop()
```

**Explicação** : quando o botão "Mostrar Aviso" é clicado, a função `show_warning()` exibe uma caixa de diálogo com o título "Aviso" e a mensagem "Essa ação pode causar perda de dados!". Isso alerta o usuário sobre a possibilidade de uma ação arriscada.

---

### `showerror()`

A função `showerror()` é usada para exibir uma caixa de mensagem de erro. Ela é utilizada quando ocorre um erro e se quer notificar o usuário de forma clara sobre o problema.

```python
messagebox.showerror(title="Título", message="Sua mensagem de erro.")
```

Onde :
- **`title`** (`str`) : o título da janela de diálogo;
- **`message`** (`str`) : a mensagem de erro a ser exibida ao usuário;

**Exemplo :**
```python
import tkinter as tk
from tkinter import messagebox

def show_error():
    messagebox.showerror("Erro", "Ocorreu um erro ao processar a solicitação!")

root = tk.Tk()
root.title("Exemplo showerror")

error_button = tk.Button(root, text="Mostrar Erro", command=show_error)
error_button.pack(pady=20)

root.mainloop()
```

**Explicação** : quando o botão "Mostrar Erro" é clicado, a função `show_error()` exibe uma caixa de diálogo com o título "Erro" e a mensagem "Ocorreu um erro ao processar a solicitação!". Isso ajuda a notificar o usuário sobre um erro crítico.

---

### `askquestion()`

A função `askquestion()` exibe uma caixa de diálogo com uma pergunta simples e dois botões: "Sim" e "Não". Ela retorna uma string que pode ser `"yes"` ou `"no"`, dependendo da escolha do usuário.

```python
messagebox.askquestion(title="Título", message="Sua pergunta")
```

Onde :
- **`title`** (`str`) : o título da janela de diálogo;
- **`message`** (`str`) : a pergunta que será exibida ao usuário;

Retorno :
- **`"yes"`** ou **`"no"`** : dependendo da escolha do usuário;

**Exemplo :**
```python
import tkinter as tk
from tkinter import messagebox

def confirm_exit():
    resposta = messagebox.askquestion("Confirmar", "Você deseja realmente sair?")
    if resposta == "yes":
        root.quit()

root = tk.Tk()
root.title("Exemplo askquestion")

exit_button = tk.Button(root, text="Sair", command=confirm_exit)
exit_button.pack(pady=20)

root.mainloop()
```

**Explicação** : quando o botão "Sair" é clicado, a função `askquestion()` exibe uma pergunta confirmando se o usuário deseja sair. Se o usuário clicar em "Sim" (`"yes"`), o programa será fechado com `root.quit()`.

---

### `askokcancel()`

A função `askokcancel()` exibe uma caixa de diálogo com uma pergunta e dois botões: "OK" e "Cancelar". Ela retorna um valor booleano, `True` se o usuário clicar em "OK" e `False` se clicar em "Cancelar".

```python
messagebox.askokcancel(title="Título", message="Sua mensagem")
```

Onde :
- **`title`** (`str`) : o título da janela de diálogo;
- **`message`** (`str`) : a mensagem ou pergunta que será exibida ao usuário;

Retorno:
- **`True`** ou **`False`** : dependendo da escolha do usuário;

**Exemplo :**
```python
import tkinter as tk
from tkinter import messagebox

def delete_file():
    resposta = messagebox.askokcancel("Confirmar", "Você deseja realmente deletar o arquivo?")
    if resposta:
        print("Arquivo deletado.")
    else:
        print("Ação cancelada.")

root = tk.Tk()
root.title("Exemplo askokcancel")

delete_button = tk.Button(root, text="Deletar Arquivo", command=delete_file)
delete_button.pack(pady=20)

root.mainloop()
```

**Explicação** : quando o botão "Deletar Arquivo" é clicado, a função `askokcancel()` pergunta ao usuário se ele deseja realmente deletar o arquivo. Se o usuário clicar em "OK", o arquivo será deletado (no exemplo, simulado com uma mensagem de `print`).

---

### `askretrycancel()`

A função `askretrycancel()` exibe uma caixa de diálogo com uma mensagem e dois botões: "Repetir" e "Cancelar". Ela retorna `True` se o usuário escolher "Repetir" e `False` se o usuário clicar em "Cancelar". Isso é útil em casos de falhas em operações que podem ser tentadas novamente.

```python
messagebox.askretrycancel(title="Título", message="Sua mensagem")
```

Onde :
- **`title`** (`str`) : o título da janela de diálogo;
- **`message`** (`str`) : a mensagem a ser exibida ao usuário;

Retorno:
- **`True`** ou **`False`** : dependendo da escolha do usuário;

**Exemplo :**
```python
import tkinter as tk
from tkinter import messagebox

def retry_operation():
    resposta = messagebox.askretrycancel("Falha", "Ocorreu um erro. Deseja tentar novamente?")
    if resposta:
        print("Tentando novamente...")
    else:
        print("Operação cancelada.")

root = tk.Tk()
root.title("Exemplo askretrycancel")

retry_button = tk.Button(root, text="Simular Erro", command=retry_operation)
retry_button.pack(pady=20)

root.mainloop()
```

**Explicação** : quando o botão "Simular Erro" é clicado, a função `askretrycancel()` pergunta ao usuário se ele deseja tentar a operação novamente após uma falha. Se o usuário clicar em "Repetir", o programa tentará novamente a operação (simulado com um `print`). Caso contrário, a operação será cancelada.

---

As funções `askyesno()` e `askyesnocancel()` do módulo `messagebox` do Tkinter exibem caixas de diálogo que permitem ao usuário tomar decisões através de respostas "Sim" ou "Não", com a opção de cancelar no caso de `askyesnocancel()`. São úteis em situações onde você quer que o usuário faça uma escolha clara e o fluxo do programa depende dessas respostas.

Vamos entender cada uma delas com detalhes e exemplos práticos.

---

### `askyesno()`

A função `askyesno()` exibe uma caixa de diálogo com uma pergunta e dois botões: "Sim" e "Não". Ela retorna valores booleanos (`True` ou `False`) dependendo da escolha do usuário.

```python
messagebox.askyesno(title="Título", message="Sua pergunta")
```

Onde :
- **`title`** (`str`) : o título da janela de diálogo;
- **`message`** (`str`) : a pergunta ou mensagem a ser exibida ao usuário;

Retorno:
- **`True`** : se o usuário clicar em "Sim";
- **`False`** : se o usuário clicar em "Não";

**Exemplo :**
```python
import tkinter as tk
from tkinter import messagebox

def confirmar_envio():
    resposta = messagebox.askyesno("Confirmar Envio", "Você tem certeza que deseja enviar o formulário?")
    if resposta:
        print("Formulário enviado!")
    else:
        print("Envio cancelado.")

root = tk.Tk()
root.title("Exemplo askyesno")

send_button = tk.Button(root, text="Enviar Formulário", command=confirmar_envio)
send_button.pack(pady=20)

root.mainloop()
```

**Explicação** : quando o botão "Enviar Formulário" é clicado, uma pergunta é feita ao usuário para confirmar se ele deseja realmente enviar o formulário. Se o usuário clicar em "Sim", o formulário é "enviado" (neste caso, simulado com um `print`). Se clicar em "Não", o envio é cancelado.

---

### `askyesnocancel()`

A função `askyesnocancel()` exibe uma caixa de diálogo com três botões: "Sim", "Não" e "Cancelar". Ela retorna:
- **`True`** se o usuário clicar em "Sim";
- **`False`** se o usuário clicar em "Não";
- **`None`** se o usuário clicar em "Cancelar" ou fechar a janela.

Essa função é útil quando você deseja que o usuário tenha a opção de cancelar a operação além de escolher entre "Sim" ou "Não".

```python
messagebox.askyesnocancel(title="Título", message="Sua pergunta")
```

Onde :
- **`title`** (`str`) : o título da janela de diálogo;
- **`message`** (`str`) : a pergunta ou mensagem a ser exibida ao usuário;

Retorno:
- **`True`** : se o usuário clicar em "Sim";
- **`False`** : se o usuário clicar em "Não";
- **`None`** : se o usuário clicar em "Cancelar" ou fechar a janela;

**Exemplo :**
```python
import tkinter as tk
from tkinter import messagebox

def confirmar_acao():
    resposta = messagebox.askyesnocancel("Salvar Arquivo", "Deseja salvar as alterações antes de sair?")
    if resposta is True:
        print("Alterações salvas!")
    elif resposta is False:
        print("Alterações descartadas.")
    else:
        print("Ação cancelada.")

root = tk.Tk()
root.title("Exemplo askyesnocancel")

save_button = tk.Button(root, text="Sair", command=confirmar_acao)
save_button.pack(pady=20)

root.mainloop()
```

**Explicação** : quando o botão "Sair" é clicado, uma pergunta é feita ao usuário para saber se ele deseja salvar as alterações antes de sair. Se o usuário clicar em "Sim", as alterações são salvas (simulado com um `print`). Se ele clicar em "Não", as alterações são descartadas. Se ele clicar em "Cancelar" ou fechar a janela, a ação de saída é cancelada.

---

### exemplos mais completos

1. **exemplo com `showinfo()`, `showwarning()` e `showerror()` :**

    ```python
    import tkinter as tk
    from tkinter import messagebox

    def process_success():
        messagebox.showinfo("Sucesso", "A operação foi concluída com êxito!")

    def process_warning():
        messagebox.showwarning("Atenção", "Essa ação pode resultar em perda de dados!")

    def process_error():
        messagebox.showerror("Erro", "Ocorreu um erro durante a operação!")

    root = tk.Tk()
    root.title("Exemplo de Messagebox")

    success_button = tk.Button(root, text="Simular Sucesso", command=process_success)
    success_button.pack(pady=10)

    warning_button = tk.Button(root, text="Simular Aviso", command=process_warning)
    warning_button.pack(pady=10)

    error_button = tk.Button(root, text="Simular Erro", command=process_error)
    error_button.pack(pady=10)

    root.mainloop()
    ```

1. **exemplo com `askquestion()`, `askokcancel()` e `askretrycancel()` :**

    ```python
    import tkinter as tk
    from tkinter import messagebox

    def sair():
        resposta = messagebox.askquestion("Sair", "Tem certeza que deseja sair?")
        if resposta == "yes":
            root.quit()

    def deletar_arquivo():
        resposta = messagebox.askokcancel("Deletar", "Você deseja realmente deletar o arquivo?")
        if resposta:
            print("Arquivo deletado.")
        else:
            print("Ação cancelada.")

    def tentar_novamente():
        resposta = messagebox.askretrycancel("Erro", "Falha na operação. Deseja tentar novamente?")
        if resposta:
            print("Repetindo operação...")
        else:
            print("Operação cancelada.")

    root = tk.Tk()
    root.title("Exemplo Completo")

    sair_button = tk.Button(root, text="Sair", command=sair)
    sair_button.pack(pady=10)

    deletar_button = tk.Button(root, text="Deletar Arquivo", command=deletar_arquivo)
    deletar_button.pack(pady=10)

    retry_button = tk.Button(root, text="Tentar Novamente", command=tentar_novamente)
    retry_button.pack(pady=10)

    root.mainloop()
    ```

1. **exemplo com `askyesnocancel()` e `askyesno()` :**

    ```python
    import tkinter as tk
    from tkinter import messagebox

    def realizar_operacao():
        salvar = messagebox.askyesnocancel("Salvar", "Você deseja salvar as alterações?")
        if salvar is True:
            print("Alterações salvas com sucesso.")
        elif salvar is False:
            continuar = messagebox.askyesno("Continuar", "Deseja continuar sem salvar?")
            if continuar:
                print("Continuação sem salvar.")
            else:
                print("Operação cancelada.")
        else:
            print("Ação cancelada.")

    root = tk.Tk()
    root.title("Exemplo Completo")

    operate_button = tk.Button(root, text="Realizar Operação", command=realizar_operacao)
    operate_button.pack(pady=20)

    root.mainloop()
    ```

---

## exercícios `messagebox`

<details>
<summary>Lista de Exercícios</summary>

1. Exercícios `showinfo()`
    1. Crie um programa que exibe uma caixa de diálogo `showinfo()` quando o usuário clicar em um botão, com a mensagem "Operação concluída com sucesso!".
    1. Modifique o programa para que o título da caixa de diálogo seja "Informação Importante", e a mensagem exibida seja "Seu arquivo foi salvo!".
    1. Crie uma aplicação com dois botões. O primeiro deve exibir uma mensagem `showinfo()` dizendo "Início do processo", e o segundo "Fim do processo".
    1. Desenvolva um programa que exiba uma caixa de diálogo `showinfo()` informando ao usuário o nome da aplicação, que deve ser recebido por uma entrada `Entry`.
    1. Escreva um programa que exiba uma mensagem de boas-vindas personalizada com `showinfo()` assim que o usuário digitar seu nome em um campo de entrada e clicar em "Enviar".
1. Exercícios `showwarning()`
    1. Crie um programa que exibe uma caixa de diálogo `showwarning()` quando o usuário tentar fechar uma janela sem salvar o arquivo. A mensagem deve ser "Atenção! Arquivo não salvo!".
    1. Crie um botão que, ao ser clicado, exibe um aviso `showwarning()` dizendo "Sua sessão está prestes a expirar".
    1. Desenvolva uma aplicação que avisa com `showwarning()` caso o usuário insira uma idade fora do intervalo permitido (por exemplo, abaixo de 18 ou acima de 60).
    1. Crie um programa que simula uma tentativa de exclusão de um item e, antes de confirmar, exibe um aviso `showwarning()` dizendo "Tem certeza de que deseja excluir este item?".
    1. Escreva um programa que exibe uma caixa de aviso `showwarning()` se o usuário tentar continuar sem preencher um formulário obrigatório.
1. Exercícios `showerror()`
    1. Crie um programa que exibe uma caixa de erro `showerror()` ao tentar realizar uma divisão por zero, com a mensagem "Erro: Divisão por zero não permitida!".
    1. Faça um programa que tenta abrir um arquivo e, se o arquivo não existir, exibe uma mensagem de erro `showerror()` dizendo "Erro: Arquivo não encontrado".
    1. Desenvolva uma aplicação que verifica o formato de um endereço de e-mail inserido. Se o formato for inválido, exibe um erro com `showerror()`.
    1. Crie um programa que exibe um erro `showerror()` quando o usuário tentar conectar-se a um servidor inexistente, com a mensagem "Erro de Conexão: Servidor não encontrado".
    1. Escreva um programa que solicita a entrada de um número e exibe uma caixa de erro `showerror()` se a entrada não for um número inteiro válido.
1. Exercícios `askquestion()`
    1. Crie um programa que pergunta ao usuário com `askquestion()` se ele deseja realmente sair da aplicação. Se ele clicar em "Sim", a aplicação fecha; caso contrário, continua rodando.
    1. Desenvolva um programa que, ao tentar excluir um item de uma lista, pergunta ao usuário com `askquestion()` se ele realmente deseja removê-lo.
    1. Faça um programa que pergunta ao usuário se ele deseja abrir um arquivo novo ou continuar com o atual, usando `askquestion()`.
    1. Crie um programa que exibe uma pergunta com `askquestion()` para confirmar se o usuário deseja reiniciar a aplicação, e implemente a ação correspondente.
    1. Escreva um programa que pergunta ao usuário, usando `askquestion()`, se ele quer realizar um backup dos dados antes de sair da aplicação.
1. Exercícios `askokcancel()`
    1. Desenvolva um programa que exibe uma caixa de diálogo `askokcancel()` ao tentar fechar a janela principal, confirmando se o usuário realmente deseja sair.
    1. Faça um programa que pergunta, usando `askokcancel()`, se o usuário deseja salvar as alterações em um arquivo antes de fechá-lo.
    1. Crie um programa que exibe um `askokcancel()` para confirmar se o usuário deseja redefinir um formulário antes de prosseguir.
    1. Escreva um programa que, ao tentar realizar uma operação de exclusão permanente de dados, solicita confirmação com `askokcancel()`.
    1. Desenvolva uma aplicação onde o usuário tenta redefinir uma senha, e uma caixa de confirmação `askokcancel()` pergunta se ele deseja realmente alterar a senha.
1. Exercícios `askretrycancel()`
    1. Crie um programa que tenta conectar a um servidor e, se a conexão falhar, exibe uma caixa de diálogo `askretrycancel()` para perguntar se o usuário deseja tentar novamente.
    1. Desenvolva uma aplicação que tenta carregar um arquivo. Se houver falha, uma mensagem `askretrycancel()` permite que o usuário tente carregar o arquivo novamente ou cancele a operação.
    1. Faça um programa que tenta realizar uma operação de download. Caso o download falhe, o programa exibe uma caixa `askretrycancel()` perguntando se o usuário deseja tentar novamente.
    1. Escreva um programa que tenta realizar uma impressão de documento e, se houver erro, usa `askretrycancel()` para perguntar se o usuário deseja tentar imprimir novamente.
    1. Desenvolva um programa que simula uma tentativa de login. Se o login falhar, uma caixa `askretrycancel()` pergunta se o usuário quer tentar novamente ou cancelar o processo.
1. Exercícios `askyesno()`
    1. Crie um programa que pergunta ao usuário com `askyesno()` se ele deseja salvar um arquivo antes de sair da aplicação.
    1. Desenvolva uma aplicação que pergunta ao usuário, usando `askyesno()`, se ele deseja apagar permanentemente um item.
    1. Crie um programa que, ao clicar em um botão, pergunta ao usuário se ele quer continuar com uma operação arriscada, usando `askyesno()`.
    1. Escreva um programa que pergunta ao usuário se ele quer mudar o tema da aplicação, usando `askyesno()`.
    1. Desenvolva um programa que, após o preenchimento de um formulário, pergunta ao usuário, usando `askyesno()`, se ele deseja enviar os dados.
1. Exercícios `askyesnocancel()`
    1. Desenvolva um programa que pergunta ao usuário se ele deseja salvar as alterações antes de fechar um arquivo, com `askyesnocancel()`. Dependendo da resposta, o arquivo é salvo, descartado, ou a operação é cancelada.
    1. Crie uma aplicação que pergunta ao usuário, com `askyesnocancel()`, se ele deseja excluir, manter ou cancelar a operação de exclusão de uma pasta.
    1. Faça um programa que pergunta se o usuário quer reiniciar, desligar ou cancelar a operação, usando `askyesnocancel()`.
    1. Desenvolva um programa onde o usuário pode alterar configurações, e o sistema pergunta, com `askyesnocancel()`, se ele deseja aplicar as alterações, reverter ou cancelar a ação.
    1. Escreva um programa que pergunta ao usuário se ele quer continuar com a instalação de um software, cancelar ou adiar, usando `askyesnocancel()`.

</details>

## métodos `quit()` vs `destroy()`

No **Tkinter**, os métodos **`quit()`** e **`destroy()`** são usados para encerrar a aplicação ou fechar janelas, mas há diferenças importantes no modo como cada um funciona.

### `quit()`

O método **`quit()`** é usado para interromper o loop principal da aplicação (`mainloop()`) e parar a execução da interface gráfica. Ele encerra a interação da interface gráfica, mas não destrói as janelas ou widgets existentes; a janela principal e seus componentes permanecem visíveis e podem ser manipulados, mas o loop de eventos é interrompido, então nenhum evento adicional será processado (por exemplo, cliques de botão ou digitação).

**Como funciona :**

- ele **sai do loop principal** (`mainloop()`) e impede que novos eventos sejam processados;
- **não destrói os widgets** ou fecha janelas; apenas faz com que a interface gráfica "pare" de responder;
- o programa continua rodando, mas sem a interface gráfica funcionando corretamente;

**Exemplo :**
```python
import tkinter as tk

def alterar_label_e_encerrar():
    # altera o texto do label
    label.config(text="Loop interrompido!")
    # encerra o loop principal
    root.quit()

root = tk.Tk()
root.title("Exemplo de quit()")

# label inicial
label = tk.Label(root, text="Loop rodando")
label.pack(pady=10)

# botão que altera o label e encerra o loop
botao = tk.Button(root, text="Alterar Label e Parar Loop", command=alterar_label_e_encerrar)
botao.pack(pady=10)

# inicia o loop principal
root.mainloop()

# reinicia o loop principal, com o label já alterado
label.config(text="O loop foi reiniciado, mas o label ainda está alterado!")
root.mainloop()
```

**Explicação**
1. **Label Inicial** : o **`Label`** é exibido com o texto inicial "Loop rodando";
1. **Botão** : quando o botão é clicado, a função **`alterar_label_e_encerrar()`** é chamada;
    - A função altera o texto do **`Label`** para "Loop interrompido!";
    - Em seguida, chama **`quit()`**, interrompendo o loop principal (`mainloop`);
1. **Reinício do Loop** : após a interrupção do loop, o script continua rodando e reinicia o loop principal, com o texto do **`Label`** já alterado. Isso demonstra que os widgets continuam existindo e suas propriedades permanecem alteradas após o `quit()`;

**Resultado:**
1. Quando o programa inicia, o **`Label`** exibe "Loop rodando".
1. Ao clicar no botão, o **`Label`** muda para "Loop interrompido!" e o loop da interface para.
1. Quando o loop é reiniciado, o **`Label`** mostra "O loop foi reiniciado, mas o label ainda está alterado!".

### **Método `destroy()`**

O método **`destroy()`** é usado para **fechar permanentemente** uma janela (ou widget) e **destruir todos os seus componentes**. Ele elimina a janela principal ou um widget específico, removendo-o completamente da aplicação. Se for chamado no widget raiz (`root`), encerrará a aplicação, destruindo a janela e todos os widgets nela contidos.

**Como funciona :**

- **Destrói completamente a janela ou widget** em que foi chamado.
- Todos os widgets filhos daquele widget ou janela também são destruídos.
- Se usado na janela principal (por exemplo, `root`), encerra a aplicação e **fecha a janela**.
- Ao contrário de `quit()`, ele não apenas interrompe o loop principal, mas também fecha e remove a janela.

**Exemplo :**

```python
import tkinter as tk

def fechar_janela():
    root.destroy()

root = tk.Tk()
root.title("Exemplo com destroy()")

# Botão para destruir a janela principal
botao = tk.Button(root, text="Fechar Janela", command=fechar_janela)
botao.pack()

root.mainloop()
```
Aqui, o botão chama `destroy()`, que fecha a janela principal e encerra completamente a aplicação. Todos os widgets dentro de `root` também são destruídos.

## `Menu`

O **widget `Menu`** do Tkinter é usado para criar **barras de menu** em uma aplicação gráfica, que podem conter várias opções e submenus. Ele é essencial para criar interfaces de usuário mais completas, fornecendo funcionalidades como menus de arquivo, edição, visualização, ajuda, etc. O widget `Menu` permite a criação de **menu principal**, **menu de contexto (popup)** e **submenus**.

### estrutura

Um menu no Tkinter é geralmente associado a uma janela principal (`Tk` ou `Toplevel`) e consiste em vários **itens de menu**. Esses itens podem ser simples opções (como "Abrir" ou "Salvar") ou até mesmo outros submenus. Cada item do menu pode estar associado a uma **ação (callback)** que será executada quando ele for clicado.

### criando um menu principal

Um **menu principal** é um menu geralmente localizado na parte superior da janela principal. Ele pode conter várias opções, como "Arquivo", "Editar", "Visualizar", cada uma das quais pode ter suas próprias entradas de submenu.

**Exemplo :**

```python
import tkinter as tk

def nova_acao():
    print("Nova ação selecionada!")

# Janela principal
root = tk.Tk()
root.title("Exemplo de Menu")

# Criação do menu principal
menu_principal = tk.Menu(root)
root.config(menu=menu_principal)  # Configura o menu principal na janela

# Criação de um submenu "Arquivo"
menu_arquivo = tk.Menu(menu_principal, tearoff=0)
menu_principal.add_cascade(label="Arquivo", menu=menu_arquivo)

# Adicionando opções ao submenu "Arquivo"
menu_arquivo.add_command(label="Novo", command=nova_acao)
menu_arquivo.add_command(label="Abrir", command=lambda: print("Abrir selecionado"))
menu_arquivo.add_separator()  # Separador
menu_arquivo.add_command(label="Sair", command=root.quit)

# Criação de um submenu "Editar"
menu_editar = tk.Menu(menu_principal, tearoff=0)
menu_principal.add_cascade(label="Editar", menu=menu_editar)

# Adicionando opções ao submenu "Editar"
menu_editar.add_command(label="Copiar", command=lambda: print("Copiar selecionado"))
menu_editar.add_command(label="Colar", command=lambda: print("Colar selecionado"))

root.mainloop()
```

**Explicação :**

1. **Menu principal** : um menu é criado usando `tk.Menu(root)` e depois associado à janela principal com `root.config(menu=menu_principal)`;
1. **Submenu "Arquivo"** : é criado usando `Menu()` e adicionado ao menu principal com `add_cascade()`;
1. **Comandos no menu** : as opções "Novo", "Abrir", e "Sair" são adicionadas ao submenu com `add_command()`. Cada opção está associada a uma função (um callback), que será executada quando o item for selecionado;
1. **Separador** : um separador visual é inserido entre as opções usando `add_separator()`;

### menu de contexto (popup menu)

O **menu de contexto** é exibido quando o usuário clica com o botão direito do mouse sobre um determinado widget ou área da janela.

**Exemplo :**

```python
import tkinter as tk

def copiar():
    print("Copiar selecionado")

def colar():
    print("Colar selecionado")

# Função para mostrar o menu de contexto
def mostrar_menu_popup(event):
    menu_popup.post(event.x_root, event.y_root)

# Janela principal
root = tk.Tk()
root.title("Exemplo de Menu Popup")

# Criando um menu de contexto (popup)
menu_popup = tk.Menu(root, tearoff=0)
menu_popup.add_command(label="Copiar", command=copiar)
menu_popup.add_command(label="Colar", command=colar)

# Ligando o menu popup ao botão direito do mouse
root.bind("<Button-3>", mostrar_menu_popup)

root.mainloop()
```

**Explicação :**

- a menu de contexto é criado da mesma forma que o menu principal, mas ele é exibido apenas quando o evento de clique com o botão direito é detectado;
- **`post(x, y)`** : este método exibe o menu na posição especificada pelas coordenadas (`x`, `y`), que são passadas através do evento de clique com o botão direito do mouse;

### adicionando checkbox e radiobutton ao menu

Menus também podem ter itens como **Checkboxes** (caixas de seleção) e **Radiobuttons**, que permitem aos usuários marcar ou selecionar uma entre várias opções.

**Exemplo :**

```python
import tkinter as tk

def verificar_opcao():
    print(f"Opção 1: {var_opcao1.get()}, Opção 2: {var_opcao2.get()}")

def verificar_radio():
    print(f"Selecionado: {var_radio.get()}")

root = tk.Tk()
root.title("Exemplo de Menu com Checkbox e Radiobutton")

# Criação do menu principal
menu_principal = tk.Menu(root)
root.config(menu=menu_principal)

# Criação de um submenu "Opções"
menu_opcoes = tk.Menu(menu_principal, tearoff=0)
menu_principal.add_cascade(label="Opções", menu=menu_opcoes)

# Variáveis associadas aos checkboxes
var_opcao1 = tk.BooleanVar()
var_opcao2 = tk.BooleanVar()

# Adicionando checkboxes
menu_opcoes.add_checkbutton(label="Opção 1", variable=var_opcao1, command=verificar_opcao)
menu_opcoes.add_checkbutton(label="Opção 2", variable=var_opcao2, command=verificar_opcao)

# Variável associada ao Radiobutton
var_radio = tk.StringVar(value="Opção A")

# Adicionando radiobuttons
menu_opcoes.add_radiobutton(label="Opção A", variable=var_radio, value="Opção A", command=verificar_radio)
menu_opcoes.add_radiobutton(label="Opção B", variable=var_radio, value="Opção B", command=verificar_radio)

root.mainloop()
```

**Explicação :**

- **`add_checkbutton()`** : adiciona uma opção de checkbox ao menu. Está associada a uma variável do tipo `BooleanVar()`, que rastreia o estado marcado/desmarcado;
- **`add_radiobutton()`** : adiciona uma opção de radiobutton ao menu. Está associada a uma variável, e apenas um dos itens pode ser selecionado;

### parâmetros comuns do menu

| Parâmetro | Tipo | Descrição |
|----|----|----|
| `parent` | `Tk` ou `Toplevel` | o widget no qual o menu será colocado (geralmente a janela principal) |
| `tearoff` | `int` | define se o menu pode ser "destacado" em uma nova janela. `0` desativa essa funcionalidade |
| `label` | `str` | define o rótulo exibido na opção do menu |
| `command` | `function` | função a ser chamada quando o item de menu for selecionado |
| `variable` | `Variable` | variável associada a um item de menu (usada para `checkbutton` e `radiobutton`) |
| `value` | `str` ou `int`| valor associado ao item de radiobutton no menu |

## exercícios `Menu`

<details>
<summary>Lista de Exercícios</summary>

1. **Menu Simples** : Crie uma aplicação com um menu simples que tenha um item "Sair" que encerra a aplicação quando clicado.
1. **Submenu com Comandos** : Crie um menu com um submenu chamado "Arquivo". Adicione os itens "Novo", "Abrir" e "Salvar" a esse submenu, e imprima uma mensagem no console quando cada um deles for clicado.
1. **Separador no Menu** : Adicione um separador no submenu "Arquivo" entre os itens "Abrir" e "Salvar". Certifique-se de que o separador está visível na interface.
1. **Menu com Opções de Editar** : Crie um menu "Editar" com os itens "Copiar", "Colar" e "Desfazer". Implemente funções que imprimam no console quando cada item for clicado.
1. **Checkbox no Menu** : Crie um submenu "Opções" com um checkbox chamado "Ativar Notificações". Quando selecionado, imprima "Notificações ativadas" e, quando desmarcado, imprima "Notificações desativadas".
1. **Radiobutton no Menu** : Adicione um submenu "Configurações" com dois radiobuttons: "Modo Claro" e "Modo Escuro". Use uma variável para armazenar a escolha do usuário e imprima a opção selecionada no console.
1. **Menu de Contexto** : Crie um menu de contexto que aparece ao clicar com o botão direito do mouse em uma área da janela. Adicione opções "Copiar" e "Colar" a este menu.
1. **Menu de Ajuda** : Adicione um item "Ajuda" no menu principal que exibe uma mensagem "Esta é a seção de ajuda." ao ser clicado.
1. **Desabilitar Itens do Menu** : Crie um menu "Arquivo" e desabilite a opção "Salvar" inicialmente. Adicione uma opção "Salvar como" que, ao ser selecionada, habilita a opção "Salvar".
1. **Menu com Atalhos de Teclado** : Adicione atalhos de teclado ao seu menu. Por exemplo, use "Ctrl+N" para o item "Novo" e "Ctrl+S" para o item "Salvar".
1. **Menu Dinâmico** : Crie uma lista de itens que podem ser adicionados dinamicamente ao submenu "Lista". Use um botão para adicionar novos itens à lista no menu.
1. **Submenus Aninhados** : Crie um menu com submenus aninhados. Por exemplo, um submenu "Formato" dentro do submenu "Editar", com opções "Negrito" e "Itálico".
1. **Múltiplos Menus** : Crie uma janela com dois menus principais diferentes: um para "Arquivo" e outro para "Editar". Cada um deve ter suas próprias opções e funcionalidades.
1. **Menu com Mensagens** : Adicione um menu "Notificações" que mostra diferentes tipos de mensagens (como "Novo item adicionado" ou "Erro ao salvar") quando cada item é clicado.
1. **Fechar Menu ao Clicar Fora** : Implemente uma funcionalidade onde o menu é fechado se o usuário clicar fora dele, em qualquer parte da janela.

</details>

## `Frame`

O **widget `Frame`** no Tkinter é um contêiner que serve como uma base para organizar outros widgets em uma janela. Ele é extremamente útil para estruturar layouts complexos, permitindo agrupar vários widgets em uma área específica da interface. Ao usar o `Frame`, pode-se dividir a janela em seções menores e organizar os widgets de maneira mais clara e gerenciável.

Um `Frame` é, essencialmente, uma "caixa" vazia que pode conter outros widgets dentro dela. Pode-se aplicar diferentes métodos de layout (como `pack`, `grid` e `place`) diretamente no `Frame` para organizar como os widgets serão dispostos dentro dele.

A sintaxe para criar um `Frame` no Tkinter é :

```python
frame = tk.Frame(parent, options...)
```

- **`parent`** : é a janela ou outro widget onde o `Frame` será inserido; normalmente, usa-se a janela principal (`Tk()`) ou outro `Frame`;
- **`options`** : são parâmetros opcionais que podem ser usados para personalizar a aparência e comportamento do `Frame`;

**Exemplos :**

```python
import tkinter as tk

janela = tk.Tk()

# criando um Frame dentro da janela principal
frame = tk.Frame(janela, bg="lightblue", width=300, height=200)
frame.pack()

# adicionando widgets dentro do Frame
label = tk.Label(frame, text="Dentro do Frame", bg="white")
label.pack(pady=10)

janela.mainloop()
```

Neste exemplo, o `Frame` com fundo azul claro tem um rótulo dentro dele com um fundo branco. O `Frame` é como uma "caixa" que contém o rótulo.

### parâmetros comuns

Aqui estão alguns dos parâmetros mais usados para configurar o widget `Frame`:

- **`bg`** (`str`) : define a cor de fundo do `Frame`;
- **`width`** (`int`) : define a largura do `Frame` em pixels;
- **`height`** (`int`) : define a altura do `Frame` em pixels;
- **`relief`** (`str`) : define o estilo da borda do `Frame`; os valores comuns incluem `FLAT`, `RAISED`, `SUNKEN`, `GROOVE`, e `RIDGE`;
- **`bd`** (`int`) : define a largura da borda do `Frame` em pixels;

### exemplo usando vários `Frames`

Para entender melhor a utilidade dos `Frames`, aqui está um exemplo onde dois `Frames` são usados para organizar diferentes widgets na janela:

```python
import tkinter as tk

janela = tk.Tk()

# frame superior
frm_superior = tk.Frame(janela, bg="lightgray", width=300, height=150)
frm_superior.pack(side="top", fill="both", expand=True)

# frame inferior
frm_inferior = tk.Frame(janela, bg="lightgreen", width=300, height=150)
frm_inferior.pack(side="bottom", fill="both", expand=True)

# adicionando widgets no Frame superior
lbl_top = tk.Label(frm_superior, text="Frame Superior", bg="white")
lbl_top.pack(pady=20)

# adicionando widgets no Frame inferior
lbl_bottom = tk.Label(frm_inferior, text="Frame Inferior", bg="white")
lbl_bottom.pack(pady=20)

janela.mainloop()
```

### layouts mais complexos

Ao usar múltiplos `Frames` dentro de uma mesma janela, pode-se criar layouts mais complexos e organizados, facilitando a divisão da interface em seções funcionais. Por exemplo, pode-se criar uma barra de ferramentas na parte superior de uma janela, uma área de trabalho central e uma barra de status na parte inferior, tudo isso usando `Frames` para manter a organização.

**Exemplo :**

```python
import tkinter as tk

janela = tk.Tk()

# Frame para a barra de ferramentas
frm_barra_ferramentas = tk.Frame(janela, bg="gray", height=50)
frm_barra_ferramentas.pack(side="top", fill="x")

# Frame para a área de trabalho
frm_principal = tk.Frame(janela, bg="white")
frm_principal.pack(side="top", fill="both", expand=True)

# Frame para a barra de status
frm_barra_status = tk.Frame(janela, bg="lightgray", height=30)
frm_barra_status.pack(side="bottom", fill="x")

# Adicionando widgets à barra de ferramentas
btn_novo = tk.Button(frm_barra_ferramentas, text="Novo")
btn_novo.pack(side="left", padx=5, pady=5)

btn_abre = tk.Button(frm_barra_ferramentas, text="Abrir")
btn_abre.pack(side="left", padx=5, pady=5)

# Adicionando widgets à barra de status
lbl_status = tk.Label(frm_barra_status, text="Status: OK", bg="lightgray")
lbl_status.pack(side="left", padx=10)

janela.mainloop()
```

## exercícios `Frame`

<details>
<summary>Lista de Exercícios</summary>

1. **Criando um Frame Básico** : Crie uma janela Tkinter com um `Frame` de 300x200 pixels, com fundo azul claro. Dentro desse `Frame`, adicione um rótulo com o texto "Este é um Frame".
1. **Organizando Widgets com Frames** : Crie uma janela que contenha dois `Frames`. O primeiro `Frame` (superior) deve conter um rótulo com o texto "Frame Superior" e o segundo `Frame` (inferior) deve conter um botão com o texto "Clique Aqui".
1. **Usando Frames com o Método `pack()`** : Crie uma janela com três `Frames`. O primeiro deve estar no topo, o segundo à esquerda e o terceiro à direita. Use o método `pack()` para posicionar os `Frames` e preencha cada um deles com um rótulo de cores diferentes.
1. **Aninhando Frames** : Crie uma interface com um `Frame` principal, e dentro dele, crie dois `Frames` aninhados, um à esquerda e outro à direita. No `Frame` da esquerda, adicione três botões dispostos verticalmente, e no `Frame` da direita, adicione um rótulo.
1. **Layout de Ferramentas e Status** : Crie uma janela com três `Frames`: um para a barra de ferramentas na parte superior, um para a área de trabalho no meio, e outro para a barra de status na parte inferior. Adicione botões na barra de ferramentas e um rótulo na barra de status.
1. **Usando o Método `grid()` em Frames** : Crie um `Frame` dentro de uma janela e use o método `grid()` para adicionar quatro botões dispostos em uma grade 2x2 dentro do `Frame`.
1. **Manipulando Cores em Frames** : Crie uma janela com um `Frame` de 400x200 pixels. Divida o `Frame` em quatro seções iguais usando `Frames` aninhados, cada uma com uma cor de fundo diferente (ex: vermelho, azul, verde e amarelo).
1. **Usando Frames com o Método `place()`** : Crie um `Frame` de 300x200 pixels e use o método `place()` para posicionar três botões dentro desse `Frame`, um em cada canto (exceto o canto inferior direito).
1. **Alterando o Tamanho do Frame Dinamicamente** : Crie uma janela com dois `Frames` lado a lado. Configure-os para que um deles possa se expandir dinamicamente quando a janela for redimensionada, e o outro mantenha seu tamanho fixo.
1. **Frame como Contêiner para Entradas** : Crie uma interface que tenha dois `Frames` lado a lado. No primeiro `Frame`, adicione dois campos de entrada (`Entry`) para nome e sobrenome. No segundo `Frame`, adicione um botão que, ao ser clicado, exiba o texto digitado em um rótulo abaixo dos `Frames`.

</summary>

## `TopLevel`

O **`Toplevel`** no Tkinter é um widget usado para criar janelas secundárias dentro de uma aplicação. Ele é muito útil quando se deseja criar novas janelas adicionais que funcionem de forma independente da janela principal (`Tk`), como janelas de diálogo ou pop-ups.

- **janela separada** : quando cria um widget `Toplevel`, ele cria uma nova janela separada que é controlada independentemente da janela principal;
- **associado à janela principal** : apesar de ser uma janela separada, o `Toplevel` ainda está associado à janela principal da aplicação; se a janela principal for fechada, todas as janelas `Toplevel` também serão fechadas;
- **personalização** : assim como a janela principal, também é possível adicionar widgets dentro do `Toplevel` e personalizá-lo (definir título, ícones, dimensões, etc.);
- **uso em diálogos** : é comumente usado para criar janelas de diálogo ou janelas que exibem configurações, informações adicionais ou formulários que são abertos a partir de um menu ou botão na janela principal;

A criação de um `Toplevel` é bastante simples. Veja um exemplo :

```python
import tkinter as tk

def abrir_nova_janela():
    nova_janela = tk.Toplevel()
    nova_janela.title("Janela Secundária")
    nova_janela.geometry("300x200")
    label = tk.Label(nova_janela, text="Esta é uma nova janela.")
    label.pack(pady=20)

# janela principal
janela_principal = tk.Tk()
janela_principal.title("Janela Principal")
janela_principal.geometry("400x300")

btn_abrir = tk.Button(janela_principal, text="Abrir Nova Janela", command=abrir_nova_janela)
btn_abrir.pack(pady=50)

janela_principal.mainloop()
```

- **`tk.Toplevel()`** : cria uma nova janela; no exemplo, a função `abrir_nova_janela()` cria uma nova instância de `Toplevel` e adiciona um rótulo dentro dessa nova janela;
- **`nova_janela.title()`** : define o título da janela secundária;
- **`nova_janela.geometry()`** : define as dimensões da nova janela; aqui, o tamanho é 300x200 pixels;
- **`btn_abrir`** : um botão na janela principal que, ao ser clicado, abre uma nova janela `Toplevel`;

### propriedades e métodos úteis

Assim como a janela principal, a instância do `Toplevel` suporta várias propriedades e métodos :

- **`title(título)`** : define o título da nova janela;
- **`geometry(dimensão)`** : define as dimensões da janela no formato `"largura x altura"`;
- **`transient(parent)`** : define a janela `Toplevel` como dependente de outra janela; isso é útil quando deseja que a janela secundária esteja sempre sobre a janela principal;
- **`withdraw()`** : oculta temporariamente a janela sem destruí-la;
- **`deiconify()`** : traz de volta uma janela oculta com `withdraw()`;
- **`destroy()`** : fecha e destrói a janela secundária;
- **`resizable(largura, altura)`** : define se a janela pode ser redimensionada. Use `True` ou `False` para permitir ou desabilitar o redimensionamento horizontal e vertical;
- **`iconbitmap(caminho_do_ícone)`** : define um ícone personalizado para a janela;

**Exemplo :**

Aqui está um exemplo mais avançado que usa algumas das propriedades mencionadas :

```python
import tkinter as tk

def abrir_janela_customizada():
    nova_janela = tk.Toplevel()
    nova_janela.title("Configurações")
    nova_janela.geometry("400x250")

    # define que a janela não pode ser redimensionada
    nova_janela.resizable(False, False)

    # define um ícone (arquivo .ico) para a janela
    # nova_janela.iconbitmap("icone.ico")

    # adiciona widgets à nova janela
    label = tk.Label(nova_janela, text="Ajuste suas configurações aqui:")
    label.pack(pady=10)

    btn_fechar = tk.Button(nova_janela, text="Fechar", command=nova_janela.destroy)
    btn_fechar.pack(pady=10)

# janela principal
janela_principal = tk.Tk()
janela_principal.title("Janela Principal")
janela_principal.geometry("400x300")

btn_abrir = tk.Button(janela_principal, text="Abrir Configurações", command=abrir_janela_customizada)
btn_abrir.pack(pady=50)

janela_principal.mainloop()
```

- **restrições de redimensionamento** : no exemplo, a função `resizable(False, False)` é usada para impedir que o usuário redimensione a janela;
- **ícone personalizado** : o método comentado `iconbitmap()` definiria um ícone para a janela secundária;
- **botão de fechar** : um botão na janela secundária usa o método `destroy()` para fechá-la;

### vantagens

1. **organização de interface** : ajuda a manter a interface organizada, abrindo janelas secundárias para configurações ou informações extras;
1. **independência** : as janelas `Toplevel` são independentes, permitindo que o usuário interaja com várias janelas sem fechar a principal;
1. **flexibilidade** : permite criar caixas de diálogo personalizadas, configurações ou outras janelas temporárias que não afetam o fluxo da janela principal;

### `Tk` vs `Toplevel`

- **`Tk()`** : representa a janela principal; somente uma instância de `Tk` pode ser criada em uma aplicação;
- **`Toplevel()`** : usado para criar janelas secundárias; podem ser criadas várias instâncias de `Toplevel`;

## exercícios `TopLevel`

<details>
<summary>Lista de Exercícios</summary>

1. Crie uma janela principal com um botão. Quando o botão for clicado, abra uma nova janela usando o widget `Toplevel`, que contenha um rótulo com o texto "Bem-vindo à nova janela".
1. Modifique o exercício anterior para que a nova janela tenha um botão "Fechar", que, quando clicado, feche apenas a nova janela sem fechar a janela principal.
1. Crie uma janela principal com dois botões. O primeiro botão abre uma nova janela com um fundo azul, e o segundo botão abre outra janela com um fundo verde. Cada nova janela deve ser um `Toplevel`.
1. Crie uma janela principal com um botão que, quando clicado, abra uma nova janela `Toplevel`. Adicione dois campos de entrada na nova janela e um botão que, ao ser clicado, exiba a soma dos valores digitados nos campos de entrada.
1. Crie uma janela principal com um botão "Abrir Configurações". Ao clicar nesse botão, uma nova janela `Toplevel` deve ser aberta. A nova janela deve conter um campo de entrada para o usuário inserir o nome e um botão "Salvar". Quando o botão "Salvar" for clicado, o nome deve ser exibido na janela principal.
1. Crie uma janela principal que tenha um botão "Abrir Janela de Ajuda". Ao clicar nesse botão, abra uma nova janela `Toplevel` que contenha um texto explicativo (usando o widget `Label`) e um botão "Fechar" para fechar a janela de ajuda.
1. Crie uma janela principal que tenha um botão "Abrir Janela Temporária". Ao clicar nesse botão, uma nova janela `Toplevel` deve ser aberta. Essa janela deve desaparecer automaticamente após 5 segundos, usando o método `after()` do Tkinter.
1. Crie uma janela principal que abra uma nova janela `Toplevel` ao clicar em um botão. Essa nova janela deve ser redimensionável, mas deve ter um tamanho mínimo de 300x200 pixels e um tamanho máximo de 600x400 pixels.
1. Crie uma janela principal com um botão "Abrir Caixa de Diálogo". Ao clicar nesse botão, uma nova janela `Toplevel` deve ser aberta e configurada para que ela sempre esteja sobre a janela principal (usando o método `transient()`).
1. Crie uma janela principal com um botão "Abrir Janelas". Ao clicar nesse botão, uma nova janela `Toplevel` deve ser aberta. Cada vez que o botão for clicado, a nova janela deve ter um tamanho, cor de fundo e posição diferentes, usando o método `geometry()` para ajustar a posição e dimensões.

</details>

## herança no tkinter

A herança no Tkinter segue os mesmos princípios da herança em qualquer outro código Python, pois o Tkinter é uma biblioteca que se integra com o paradigma de orientação a objetos (OO). Isso significa que pode-se criar classes personalizadas que herdam de classes base do Tkinter, como `Tk`, `Frame`, `Button`, entre outras, e então personalizar ou estender suas funcionalidades.

### como usar

1. **herança da classe `Tk`** : quando se deseja criar uma janela personalizada que tenha comportamento adicional ou diferente, pode criar uma classe que herde de `Tk`, a classe que cria a janela principal;

1. **herança da classe `Frame`** : criar um container ou seção personalizada dentro de uma janela do Tkinter, herdar da classe `Frame` é uma prática comum; isso permite que se crie interfaces modulares e reutilizáveis;

**Exemplo :**

Neste exemplo, uma classe personalizada é criada e ela herda de `Tk`, a classe que representa a janela principal do Tkinter. A subclasse poderá configurar a janela de maneira personalizada e adicionar widgets:

```python
import tkinter as tk

# criando uma subclasse que herda de Tk
class MinhaJanela(tk.Tk):
    def __init__(self):
        # inicializa a classe Tk (janela principal)
        super().__init__()

        # configurações da janela
        self.title("Minha Janela Personalizada")
        self.geometry("300x200")

        # adicionando um rótulo à janela
        self.label = tk.Label(self, text="Bem-vindo à janela personalizada!")
        self.label.pack(pady=20)

        # adicionando um botão à janela
        self.button = tk.Button(self, text="Clique aqui", command=self.alterar_texto)
        self.button.pack(pady=10)

    def alterar_texto(self):
        # método que altera o texto do rótulo
        self.label.config(text="Texto alterado!")

# instanciando e executando a janela
if __name__ == "__main__":
    janela = MinhaJanela()
    janela.mainloop()
```

- `MinhaJanela` herda de `Tk`, então ela se comporta como uma janela Tkinter;
- no método `__init__`, o método `super().__init__()` é usado para garantir que o inicializador da classe base (`Tk`) seja chamado;
- um `Label` e um `Button` são adicionados à janela, e um método `alterar_texto()` é chamado quando o botão é clicado;

**Exemplo de herança de `Frame`**

Neste exemplo, uma subclasse personalizada que herda de `Frame` será criada. Isso permite que um "sub-componente" possa ser criado e inserido em várias janelas.

```python
import tkinter as tk

# subclasse herdando de Frame
class MinhaFrame(tk.Frame):
    def __init__(self, parent):
        # inicializando a classe Frame
        super().__init__(parent)

        # adicionando widgets ao frame
        self.label = tk.Label(self, text="Este é um frame personalizado")
        self.label.pack(pady=10)

        self.entry = tk.Entry(self)
        self.entry.pack(pady=5)

        self.button = tk.Button(self, text="Enviar", command=self.exibir_texto)
        self.button.pack(pady=5)

    def exibir_texto(self):
        # exibe o texto inserido no campo de entrada
        texto = self.entry.get()
        self.label.config(text=f"Texto inserido: {texto}")

# criando uma janela principal e adicionando o frame personalizado
if __name__ == "__main__":
    root = tk.Tk()
    root.title("Exemplo com Frame Personalizado")

    # instancia o frame personalizado e o insere na janela principal
    frame = MinhaFrame(root)
    frame.pack(padx=20, pady=20)

    root.mainloop()
```

- `MinhaFrame` herda de `Frame`, então ela pode ser usada como um container;
- no método `__init__`, a classe base `Frame` é inicializada com `super().__init__(parent)` para definir o frame em um widget pai (no caso, a janela principal);
- widgets são adicinados ao frame como rótulos, campos de entrada e botões, e um método `exibir_texto()` é usado para exibir o texto digitado no `Entry` dentro do `Label`;

### benefícios da herança no tkinter

1. **modularidade** : ao criar classes baseadas em `Tk` ou `Frame`, pode-se dividir sua interface gráfica em partes menores e mais gerenciáveis, cada uma com sua própria lógica e comportamento;
1. **reutilização de código** : se precisar usar a mesma interface (ou parte dela) em diferentes janelas ou programas, pode simplesmente reutilizar a classe herdada;
1. **customização fácil** : métodos podem ser sobrescritos ou estendidos para adicionar comportamento novo, sem modificar a classe base;

**Exemplo Avançado**

Aqui está um exemplo que cria uma janela com dois frames, cada um implementado com uma classe que herda de `Frame`:

```python
import tkinter as tk

# frame para entrada de dados
class EntradaFrame(tk.Frame):
    def __init__(self, parent):
        super().__init__(parent)

        # widgets do frame de entrada
        self.label = tk.Label(self, text="Digite algo:")
        self.label.pack(padx=5, pady=5)

        self.entry = tk.Entry(self)
        self.entry.pack(padx=5, pady=5)

        self.button = tk.Button(self, text="Enviar", command=self.enviar)
        self.button.pack(padx=5, pady=5)

    def enviar(self):
        texto = self.entry.get()
        self.master.resultado_frame.atualizar_resultado(texto)

# frame para exibir o resultado
class ResultadoFrame(tk.Frame):
    def __init__(self, parent):
        super().__init__(parent)

        # widgets do frame de resultado
        self.label = tk.Label(self, text="Resultado:")
        self.label.pack(padx=5, pady=5)

        self.resultado_label = tk.Label(self, text="")
        self.resultado_label.pack(padx=5, pady=5)

    def atualizar_resultado(self, texto):
        self.resultado_label.config(text=texto)

# janela principal
class JanelaPrincipal(tk.Tk):
    def __init__(self):
        super().__init__()

        self.title("Exemplo com Vários Frames")
        self.geometry("300x200")

        # cria os frames e os coloca na janela principal
        self.entrada_frame = EntradaFrame(self)
        self.entrada_frame.pack(pady=10)

        self.resultado_frame = ResultadoFrame(self)
        self.resultado_frame.pack(pady=10)

# instanciando a janela principal
if __name__ == "__main__":
    app = JanelaPrincipal()
    app.mainloop()
```

- `EntradaFrame` é responsável por capturar dados do usuário;
- `ResultadoFrame` exibe os resultados processados;
- a classe principal `JanelaPrincipal` organiza e gerencia os frames;

## exemplo notepad da aula

```python
import tkinter as tk
from tkinter.filedialog import askopenfilename, asksaveasfile

def abre_arquivo():
    arq_caminho = askopenfilename()
    print(f'{arq_caminho = }')
    with open(arq_caminho, mode='r', encoding='utf-8') as arq:
        conteudo = ""
        for linha in arq.readlines():
            conteudo += linha

    caixa_texto.delete('1.0','end')
    caixa_texto.insert('1.0', conteudo)

def novo_arquivo():
    caixa_texto.delete('1.0','end')

def salva_arquivo():
    conteudo = caixa_texto.get('1.0', 'end')
    # print(f'{conteudo = }')
    arquivo = asksaveasfile()
    arquivo.write(conteudo)
    arquivo.close()

janela = tk.Tk()
janela.title('uma janela')
janela.geometry('640x640')
janela.resizable(False, False)

# widgets
# Menu, TextArea
menu_principal = tk.Menu(janela)
janela.config(menu=menu_principal)

menu_arquivo = tk.Menu(menu_principal, tearoff=0)
menu_principal.add_cascade(label='Arquivo', menu=menu_arquivo)
menu_arquivo.add_command(label='Novo', command=novo_arquivo)
menu_arquivo.add_command(label='Abrir', command=abre_arquivo)
menu_arquivo.add_command(label='Salvar', command=salva_arquivo)
menu_arquivo.add_separator()
menu_arquivo.add_command(label='Sair', command=janela.quit)

menu_editar = tk.Menu(menu_principal, tearoff=0)
menu_principal.add_cascade(label='editar', menu=menu_editar)
menu_editar.add_command(label='fonte')

caixa_texto = tk.Text(janela, font=('Arial', 23))
caixa_texto.pack()

janela.mainloop()
```
