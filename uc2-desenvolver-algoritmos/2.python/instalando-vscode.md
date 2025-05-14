Índice Instalando o VS Code

1. [baixando o vs code](#baixando-o-vs-code)
1. [instalar o vs code](#instalar-o-vs-code)
1. [extensão do vs code](#extensão-do-vs-code)

# como baixar e instalar o vs code

## baixando o vs code

1. **Abrir o Navegador de Internet:**
    - Clique no ícone do navegador de internet (por exemplo, Google Chrome, Firefox, Edge) na barra de tarefas ou na área de trabalho.

2. **Acessar o Site de Download:**
    - Na barra de endereços do navegador, digite [https://code.visualstudio.com/download](https://code.visualstudio.com/download) e pressione Enter, ou
    - use o Google e digite **vs code download**, o primeiro link deverá encarminhar à página para baixar.

3. **Selecionar a Versão para Download:**
    - Na página serão apresentadas 3 versões para o download.
    - Selecione a versão apropriada para o seu sistema operacional (Windows, macOS ou Linux).
        - Para as aulas, selecione a versão **User Installer** do Windows.
        - Em sua casa, escolha a versão principal.

## instalar o vs code

### windows

A versão **User Installer** é usada para realizar uma instalação onde o usuário não possui as permissões de administrador na máquina. Ela terá um nome como `VSCodeUserSetup-x64-1.xx.exe`, onde `xx` representa a versão baixada.

1. **Executar o Instalador:**
    - Após o download, localize o arquivo baixado (geralmente na pasta "Downloads").
    - Clique duas vezes no arquivo `VSCodeSetup.exe` para iniciar o instalador.
1. **Iniciar a Instalação:**
    - Clique em "Sim" se o Windows solicitar permissão para fazer alterações no dispositivo.
    - Na tela de boas-vindas do instalador do VS Code, clique em "Next" (Avançar).
1. **Aceitar o Contrato de Licença:**
    - Marque a caixa "I accept the agreement" (Eu aceito o contrato) e clique em "Next" (Avançar).
1. **Escolher a Pasta de Instalação:**
    - Deixe a pasta de instalação padrão ou selecione outra pasta de sua escolha e clique em "Next" (Avançar).
1. **Criar Atalho no Menu Iniciar**
    - Deixe a opção padrão e clique em "Next" (Avançar).
1. **Selecionar Componentes Adicionais:**
    - Marque todas as opções faltantes, criar ícone na área de trabalho e adicionar o Code ao menu do Explorer.
    - Clique em "Next" (Avançar).
1. **Revisar e Instalar:**
    - Revise as opções de instalação de modo que fique parecido com o modelo abaixo :
    ```
    Local de destino:
        C:\Users\<seu_usuario>\AppData\Local\Programs\Microsoft VS Code

    Pasta do Menu Iniciar:
        Visual Studio Code

    Tarefas adicionais:
        Atalhos adicionais:
            Criar um atalho na área de trabalho
        Outros:
            Adicione a ação "Abrir com Code" ao menu de contexto de arquivo do Windows Explorer
            Adicione a ação "Abrir com Code" ao menu de contexto de diretório do Windows Explorer
            Registre Code como um editor para tipos de arquivos suportados
            Adicione em PATH (disponível após reiniciar)
    ```
   - Clique em "Install" (Instalar). Aguarde a instalação ser concluída.
1. **Finalizar a Instalação:**
    - Marque a opção "Launch Visual Studio Code" (Lançar Visual Studio Code) e clique em "Finish" (Concluir).
1. **Atalho**
    - Após a instalação e a primeira execução, clique com o botão direito no ícone da barra inferir e clique em "Fixar", para o programa estar fixado na barra de tarefas mesmo depois de fechado.

### macos

1. **Abrir o Arquivo de Download:**
    - Após o download, localize o arquivo baixado (geralmente na pasta "Downloads").
    - Clique duas vezes no arquivo `.dmg`.
2. **Mover o VS Code para a Pasta Aplicativos:**
    - Arraste o ícone do Visual Studio Code para a pasta "Applications" (Aplicativos).
3. **Abrir o VS Code:**
    - Vá até a pasta "Applications" (Aplicativos) e clique duas vezes no ícone do Visual Studio Code para abrir o aplicativo.

### linux

1. **Dependendo da Distribuição, Utilize o Método Apropriado:**

    **Ubuntu/Debian:**
    - Abra o terminal.
    - Digite o comando:
    ```
    sudo apt update
    sudo apt install code
    ```
    - Pressione Enter e siga as instruções para instalar.<br><br>

    **Fedora/RHEL:**
    - Abra o terminal.
    - Digite o comando:
    ```
    sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
    sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
    sudo dnf check-update
    sudo dnf install code
    ```
    - Pressione Enter e siga as instruções para instalar.<br><br>

2. **Abrir o VS Code:**
   - Após a instalação, abra o Visual Studio Code pelo menu de aplicativos ou digitando `code` no terminal.

### dicas finais

- **Tradução para Português:**
    - Abra o VS Code.
    - Vá até "View" (Exibir) > "Command Palette" (Paleta de Comandos).
    - Digite `Configure Display Language` e selecione `Portuguese (Brazil)`.

----

## extensão do vs code

O VS Code, por si só, é uma ferramente muito poderosa, mas ele pode melhorar.

O programa tem uma funcionalidade chamada de extensões, onde é possível adicionar extensões ao programa de modo que ele funcione melhor para determinados trabalhos.

Há uma extensão perfeita para trabalhar com Python no VS Code. Para instalá-la, siga os passos abaixo.

### instalando a extensão

1. **Abrir o VS Code:**
    - Clique no ícone do Visual Studio Code na área de trabalho ou na lista de aplicativos.
1. **Abrir o Gerenciador de Extensões:**
    - No lado esquerdo da janela do VS Code, clique no ícone de quadrados empilhados (Extensões). Alternativamente, você pode usar o atalho de teclado `Ctrl+Shift+X` no Windows/Linux ou `Cmd+Shift+X` no macOS.
1. **Procurar por "Python":**
    - Na barra de pesquisa do gerenciador de extensões, digite `Python`.
    - A extensão oficial do Python, desenvolvida pela Microsoft, deve aparecer como o primeiro resultado. Ela é identificada com o nome "Python" e o ícone de uma cobra amarela.
1. **Instalar a Extensão:**
    - Clique no botão "Install" (Instalar) ao lado da extensão "Python". A instalação pode levar alguns momentos.
1. **Selecionar o Interpretador Python:**
    - Após a instalação, o VS Code pode solicitar que você selecione um interpretador Python.
    - Se a solicitação aparecer, clique em "Select Python Interpreter" (Selecionar Interpretador Python).
    - Escolha o interpretador Python instalado no seu sistema. Se você tiver mais de uma versão do Python instalada, selecione a versão que deseja usar.

### verificando a instalação

1. **Criar um Novo Arquivo Python:**
    - Clique em "File" (Arquivo) > "New File" (Novo Arquivo).
    - Salve o arquivo com a extensão `.py` (por exemplo, `teste.py`).
2. **Escrever um Código Simples:**
    - Digite o seguinte código no arquivo:
        ```python
        print("Olá, mundo!")
        ```
    - Salve o arquivo.
3. **Executar o Código:**
    - Clique com o botão direito no arquivo e selecione "Run Python File in Terminal" (Executar Arquivo Python no Terminal).
    - O terminal deve abrir na parte inferior do VS Code e exibir a saída `Olá, mundo!`.

Agora, você está pronto para começar a programar em Python no VS Code com a extensão instalada.
