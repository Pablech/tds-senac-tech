Índice Instalando o Python

1. [o que é o python](#o-que-é-o-python)
1. [como instalar](#como-instalar)

# instalando o python

## o que é o python

Python é uma linguagem de programação de alto nível, interpretada e de propósito geral, conhecida por sua simplicidade e legibilidade. Criada pelo matemático holandês Guido van Rossum e lançada pela primeira vez em 1991, Python foi projetada para enfatizar a facilidade de leitura do código, utilizando uma sintaxe que permite aos programadores expressar conceitos de maneira clara e concisa.

Algumas características principais de Python incluem:

1. **Sintaxe Clara e Intuitiva**: A sintaxe de Python é semelhante ao inglês, o que torna o código mais legível e mais fácil de entender e escrever;
2. **Multiplataforma**: Python é compatível com a maioria dos sistemas operacionais, incluindo Windows, macOS e Linux;
3. **Bibliotecas e Frameworks Ricos**: Python possui uma vasta coleção de bibliotecas e frameworks, como NumPy, Pandas, Matplotlib, Django e Flask, que facilitam o desenvolvimento em diversas áreas, como ciência de dados, aprendizado de máquina, desenvolvimento web, automação e muito mais;
4. **Interpretada**: Python é uma linguagem interpretada, o que significa que o código é executado linha por linha, facilitando a depuração e tornando o desenvolvimento mais ágil;
5. **Paradigmas de Programação**: Suporta múltiplos paradigmas de programação, incluindo programação procedural, orientada a objetos e funcional;

Devido a essas características, Python é amplamente utilizada tanto por iniciantes quanto por desenvolvedores experientes e em várias áreas de desenvolvimento, desde scripts simples até aplicações complexas de inteligência artificial e análise de dados.

## como instalar

Há diversar formas de instalar o Python. Para cada sistema operacional há uma ou mais formas específicas:

- Windows : https://python.org.br/instalacao-windows/
- Linux : https://python.org.br/instalacao-linux/
- macOS : https://python.org.br/instalacao-mac/

### windows
O Python pode ser baixado do seu site em [www.python.org](https://www.python.org/downloads/), no botão em destaque. O nome do arquivo será algo como `python-3.xx-amd64.exe`, sendo o `x` substituído pela versão atual do programa. Quando ele for executado, ele poderá ser instalado de duas formas, com e sem direitos de administrador. Se for instalado com direitos de administrador, então o Python ficará disponível para todos os usuários da máquina. Se for instalado para o usuário local, então apenas ele terá o programa instalado.

Uma vez executado, é apresentada a tela de `Install Python 3.xx (64-bit)`. Nela há duas opções apresentadas:
- **Install Now** (instalar agora) : essa opção irá pedir a senha do administrador;
- **Customize installation** (customizar a instalação) : essa opção permite escolher instalar para o usuário local ou instalar para todos os usuários;

As opções abaixo podem ser deixadas inalteradas.
- [x] Use admin privileges when installing py.exe;
- [ ] Add python.exe to PATH;

Após selecionar a opção **Customize installation**, será mostrada a tela de `Optional Features` (Funções Opcionais).

- [x] Documentation
- [x] pip
- [x] tcl/tk and IDLE
- [x] Python test suite
- [x] py launcher
- [ ] for all users (requires admin privileges)

Marque as opções assim como consta acima. A **Documentation**, como o nome indica, vai instalar a documentação do Python, que também pode ser encontrada em [Python Docs](https://docs.python.org/3/). O **pip** é o gerenciador de pacotes do Python (Package Installer for Python). O **tcl/tk** é uma biblioteca usada para gerar aplicações gráficas e o IDLE é o ambiente integrado de desenvolvimento padrão que vem com o instalador do Python (integrated development environment for Python). O **py launcher** é um atalho para todas as versões do Python instaladas no sistema. O **for all users** é usado quando se quer que o Python seja instalado para todos os usuários da máquina, isto é, ele será instalado no *AppData* de cada usuário existente na máquina.

A próxima tema é a de `Advanced Options` (Opções Avançadas).

- [ ] Install Python 3.xx for all users
- [x] Associate files with Python
- [x] Create shortcuts for installed applications
- [x] Add Python to environment variables
- [x] Precompile standard library
- [x] Download debugging symbols
- [x] Download debug binaries

Se a opção **Install Python for all users** for marcada, ele será instalado na pasta Arquivo de Programas do Windows e dessa forma estará disponível para todos os usuários. Com exceção da primeira opção, todas as demais podem ser marcadas. No campo abaixo irá mostrar o caminho onde o Python será instalado.

Uma vez que a instalação for finalizada, é possível verficar se está instalado abrindo o *Prompt de Comando* e digitando `python --version`. Se a versão for mostrada, então tudo foi instalado corretamente.
```cmd
C:\> python --version
Python 3.xx

C:\> |
```

#### variáveis de ambiente
Adicionar um programa às variáveis de ambiente do Windows envolve a atualização da variável de ambiente `PATH` para incluir o diretório do programa.

Veja os passos :

1. Abrir as Propriedades do Sistema :
    - Pressione `Win + R`, digite `sysdm.cpl` e pressione `Enter`.
1. Acessar as Variáveis de Ambiente :
    - Na janela "Propriedades do Sistema", vá para a guia `Avançado` e clique em `Variáveis de Ambiente...`.
1. Editar a Variável PATH :
    - Na seção "Variáveis do sistema", encontre a variável `Path` e selecione-a.
    - Clique em `Editar...`.
1. Adicionar o Caminho do Programa :
    - Na janela "Editar Variável de Ambiente", clique em `Novo` e adicione o caminho completo do diretório do programa que deseja adicionar.
    - Por exemplo, se for adicionar o Python instalado para o usuário, vai estar em
        - `C:\Users\<seu_usuário>\AppData\Programs\Python\Python313`
    - Uma vez localizado, adicione esse caminho.
1. Salvar as Alterações :
    - Clique em `OK` para fechar todas as janelas abertas.

#### verificando
Para garantir que o programa foi adicionado ao `PATH`, abra o `Prompt de Comando` (CMD) e digite o comando relacionado ao programa para verificar se ele é reconhecido pelo sistema. Por exemplo, como foi adicionado o Python, digite `python --version` para verificar se o comando é executado corretamente.

Isso deve permitir que o programa seja executado a partir de qualquer diretório no Prompt de Comando.

### linux

Se você é usuário de Linux, provavelmente você já sabe instalar o Python ;)
