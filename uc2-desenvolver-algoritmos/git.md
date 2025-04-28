# Git

O [Git](https://git-scm.com) é um **sistema de controle de versão distribuído**, amplamente utilizado no desenvolvimento de software para rastrear mudanças em arquivos e coordenar o trabalho em equipe. Ele permite que desenvolvedores colaborem no mesmo projeto de forma eficiente, mantendo um histórico completo de todas as alterações realizadas no código ao longo do tempo.

Criado por [**Linus Torvalds**](https://pt.wikipedia.org/wiki/Linus_Torvalds) em 2005 para apoiar o desenvolvimento do kernel do Linux, o Git se tornou um dos sistemas mais populares devido à sua eficiência, flexibilidade e robustez. Hoje, é essencial no desenvolvimento de software, tanto em projetos individuais quanto em grandes equipes.

## O que é controle de versão?

O **controle de versão** é uma prática fundamental no desenvolvimento de software, utilizada para gerenciar as alterações feitas no código ao longo do tempo. Ele permite acompanhar quem realizou mudanças, quando essas mudanças foram feitas e por que motivo. Além disso, possibilita reverter para versões anteriores do projeto caso algo dê errado ou seja necessário comparar diferentes estágios do desenvolvimento.

Existem três principais modelos de controle de versão:

1. **Controle de versão local**: o desenvolvedor mantém versões diferentes do código em pastas locais em seu computador, o que não é eficiente para projetos grandes ou colaborativos.
2. **Controle de versão centralizado**: um único servidor central armazena todas as versões dos arquivos, e os desenvolvedores fazem "check-out" para trabalhar localmente. O problema desse modelo é a dependência do servidor central.
3. **Controle de versão distribuído**: nesse modelo, utilizado pelo Git, cada colaborador possui uma cópia completa do repositório, incluindo todo o histórico de alterações. Isso oferece maior segurança e flexibilidade, pois o trabalho pode continuar mesmo se o servidor central estiver inacessível.

## Como o Git funciona

O Git organiza o gerenciamento do código em três principais áreas:

1. **Diretório de trabalho (working directory)**: é onde você realiza as alterações nos arquivos de forma local.
2. **Área de preparação (staging area)**: aqui, você seleciona as alterações que deseja registrar no histórico do projeto; funciona como uma "zona de rascunho" antes de salvar definitivamente as mudanças.
3. **Repositório local (local repository)**: é onde o Git armazena o histórico das alterações confirmadas (commits). Cada colaborador possui seu próprio repositório local.

Além disso, o Git permite trabalhar com **repositórios remotos**, hospedados em servidores como GitHub, GitLab ou Bitbucket, facilitando a colaboração em equipe. A comunicação com esses servidores permite **sincronizar** as mudanças feitas por diferentes desenvolvedores.

## Principais vantagens do Git

1. **Distribuído**: cada desenvolvedor possui uma cópia completa do repositório, o que permite trabalhar off-line com maior segurança.
2. **Rápido e eficiente**: o Git é otimizado para gerenciar grandes volumes de código, com múltiplas ramificações (branches) e integrações (merges) de maneira rápida.
3. **Controle de branches**: as branches no Git são leves, facilitando o desenvolvimento de novos recursos de forma isolada antes de integrá-los ao código principal.
4. **Histórico completo**: o Git mantém um histórico detalhado de todas as mudanças realizadas, permitindo reverter alterações e entender as razões por trás de cada modificação.
5. **Facilidade de colaboração**: com o Git, várias pessoas podem trabalhar simultaneamente no mesmo projeto, sem que o código de uma interfira no trabalho da outra.

---

## GitHub

O GitHub é uma plataforma de desenvolvimento colaborativo que hospeda projetos na nuvem utilizando o sistema de controle de versões Git. Ele ajuda os desenvolvedores a armazenar, administrar e acompanhar mudanças no código. Geralmente, os projetos hospedados são de código aberto, permitindo a colaboração e o acompanhamento detalhado do progresso. Além disso, o GitHub também funciona como uma rede social, conectando desenvolvedores e usuários. Como usuário, você pode baixar programas ou aplicativos e, da mesma forma, colaborar com o desenvolvimento desses projetos, oferecendo melhorias e participando de discussões em fóruns temáticos.

### Criando uma conta no GitHub

Criar uma conta no GitHub é um processo simples e rápido:

1. **Acesse o site do GitHub**: abra seu navegador e vá para o site oficial [github.com](https://github.com).
2. **Inicie o processo de criação da conta**: na página inicial, clique no botão **"Sign up"** ou **"Sign up for GitHub"** (inscrever-se) no canto superior direito da tela.
3. **Preencha as informações de cadastro**: informe seu **nome de usuário**, **e-mail** e **senha** na página de cadastro. Depois, clique em **"Continue"**.
4. **Verifique a conta**: o GitHub solicitará que você complete um teste de CAPTCHA para confirmar que você não é um robô. Após completar o teste, clique em **"Create account"** (criar conta).
5. **Confirme seu e-mail**: o GitHub enviará um e-mail de confirmação para o endereço informado. Acesse-o e confirme sua conta.
6. **Escolha um plano**: o GitHub oferece planos **gratuito** e **pago**. Para começar, selecione o plano **gratuito**.
7. **Configure sua conta**: após confirmar o e-mail, você será direcionado ao painel principal do GitHub, onde poderá configurar preferências iniciais, como adicionar uma foto de perfil e personalizar suas configurações.

Agora que sua conta está criada, você pode começar a usar o GitHub para **criar repositórios**, **colaborar com outros desenvolvedores**, e **clonar ou fazer fork de repositórios**.

### Criando um repositório

Com a conta criada, é hora de criar seu primeiro repositório:

1. **Acesse o GitHub**:
    - Entre no [site do GitHub](https://github.com/) e faça login na sua conta (caso ainda não esteja logado).

2. **Crie um novo repositório**:
    - No canto superior direito, clique no ícone “+” e selecione **"New repository"** (Novo repositório).

3. **Defina as informações do repositório**:
    - **Repository name**: defina um nome único e descritivo para o repositório (exemplo: `silver-enigma`).
    - **Description (opcional)**: adicione uma breve descrição do projeto.
    - **Public ou Private**: escolha se o repositório será público (visível para todos) ou privado (acesso restrito a você e aos colaboradores autorizados).
    - **Initialize this repository with a README**: marque esta opção se quiser que o GitHub crie automaticamente um arquivo `README.md`, útil para descrever o projeto.
    - **Add .gitignore**: opcionalmente, selecione um template de `.gitignore`, que lista arquivos que o Git deve ignorar (como arquivos temporários ou gerados automaticamente).
    - **Choose a license**: escolha uma licença para seu projeto, caso necessário; ela definirá as condições sob as quais outros poderão usar seu código.
    - **Owner**: escolha se o repositório será criado em sua conta pessoal ou em uma organização (caso você faça parte de alguma).

4. **Crie o repositório**:
    - Clique no botão **"Create repository"** (Criar repositório).

Pronto! Seu repositório foi criado e está pronto para ser utilizado no GitHub.
