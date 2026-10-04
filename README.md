# Gerência de Configuração — Entregas 1 e 2

Projeto prático desenvolvido na disciplina de Gerência de Configuração.

O projeto demonstra, de forma prática, conceitos relacionados ao Controle de Versão e ao Gerenciamento de Construção, utilizando Git, GitHub, Maven, JUnit, GitHub Actions e GitHub Pages.

---

# 1. Objetivos

O projeto tem como objetivos:

- demonstrar conceitos de Controle de Versão utilizando Git e GitHub;
- aplicar políticas de branches, commits, merges, baselines e releases;
- estruturar uma aplicação Java utilizando Maven;
- executar testes automatizados com JUnit;
- gerar um artefato da aplicação;
- gerar documentação Javadoc;
- automatizar o processo de construção utilizando GitHub Actions;
- integrar o processo de construção ao repositório GitHub;
- publicar a documentação gerada utilizando GitHub Pages.

---

# 2. Entrega 1 — Controle de Versão

A Entrega 1 teve como foco a aplicação prática dos conceitos de Sistema de Controle de Versões (SCV) utilizando Git e GitHub.

## 2.1 Conceitos trabalhados

- Repository
- Workspace
- Version
- Configuration Item (SCI)
- Codeline
- Branching
- Merging
- Mainline
- Baseline
- Release
- Configuration Control
- System Building

## 2.2 Políticas de Gerência de Configuração

### Política de Branches

A branch `main` representa a linha principal do projeto.

Novas funcionalidades são desenvolvidas em branches do tipo `feature/*`.

Correções podem ser desenvolvidas em branches do tipo `bugfix/*`.

A branch `main` deve permanecer funcional.

Após serem concluídas e testadas, as alterações podem ser integradas à branch `main`.

### Política de Commits

Cada commit deve representar uma alteração coerente e identificável.

As mensagens dos commits devem descrever objetivamente a alteração realizada.

São utilizados prefixos de acordo com a natureza da alteração:

- `feat:` para novas funcionalidades;
- `fix:` para correções;
- `docs:` para alterações na documentação.

### Política de Merge

O merge deve ocorrer após a conclusão da funcionalidade.

A alteração deve ser testada antes da integração.

Eventuais conflitos devem ser resolvidos antes da integração.

As alterações são integradas à branch `main`, mantendo o histórico de desenvolvimento rastreável.

### Política de Baselines

Uma baseline deve ser criada quando o projeto atingir uma configuração estável e validada.

Cada baseline deve possuir um identificador único.

Neste projeto, são utilizadas tags anotadas para identificar as configurações estabelecidas como baselines.

Baselines criadas:

- `baseline-v1.0` — configuração inicial estável;
- `baseline-v1.1` — sistema e processo de build.

### Política de Releases

Uma Release representa uma versão considerada pronta para disponibilização.

Nem todo commit ou versão precisa gerar uma Release.

A Release deve estar associada a uma configuração identificável do projeto.

Neste projeto, a Release é associada a uma tag que identifica a configuração disponibilizada.

## 2.3 Processo de Controle de Versão

O fluxo adotado no projeto é:

1. Desenvolvimento no Workspace;
2. Criação de uma branch para novas funcionalidades;
3. Realização de alterações;
4. Registro das alterações por meio de commits;
5. Testes da funcionalidade;
6. Merge da branch na `main`;
7. Estabelecimento de uma baseline quando a configuração estiver estável;
8. Criação de uma Release quando a versão estiver pronta para disponibilização.

---

# 3. Entrega 2 — Gerenciamento de Construção

A Entrega 2 amplia o projeto desenvolvido na Entrega 1, acrescentando um processo automatizado de construção, testes, geração de documentação e publicação.

O processo implementado utiliza o repositório GitHub como base do Sistema de Controle de Versões e o GitHub Actions como ambiente de automação do processo de construção.

## 3.1 Tecnologias utilizadas

| Tecnologia | Utilização |
|---|---|
| Git | Controle de versões |
| GitHub | Repositório remoto e integração |
| Java 17 | Desenvolvimento da aplicação |
| Maven | Gerenciamento da construção |
| JUnit 5 | Testes automatizados |
| Maven Surefire | Execução dos testes |
| Maven Javadoc Plugin | Geração da documentação |
| GitHub Actions | Automação do pipeline |
| GitHub Pages | Publicação da documentação |

## 3.2 Aplicação Java

Foi criada uma aplicação Java simples para demonstrar o processo de construção.

A classe principal é:

`br.com.luizfernando.Calculadora`

A aplicação implementa operações matemáticas básicas, incluindo:

- soma de dois números inteiros;
- multiplicação de dois números inteiros.

## 3.3 Testes automatizados

Foram implementados testes utilizando JUnit para validar as funcionalidades da classe `Calculadora`.

Os testes verificam:

- soma de `2 + 3 = 5`;
- multiplicação de `3 × 4 = 12`.

A execução local apresentou:

    Tests run: 2
    Failures: 0
    Errors: 0
    Skipped: 0
    BUILD SUCCESS

## 3.4 Build com Maven

O Maven foi utilizado para realizar o processo de construção da aplicação.

O projeto possui o arquivo:

`app/pom.xml`

O processo de empacotamento gera o artefato:

`app/target/gc-entrega-2-1.0.0.jar`

A construção da aplicação é realizada por meio do comando:

    mvn -f app/pom.xml package

O processo executa as etapas necessárias para validação, compilação, testes e empacotamento da aplicação.

## 3.5 Geração de Javadoc

A aplicação possui documentação estruturada no padrão Javadoc.

A documentação foi incorporada diretamente à classe `Calculadora`, incluindo informações sobre a classe, métodos, parâmetros, valores de retorno, autoria e versão.

A documentação é gerada durante o processo de construção e disponibilizada em:

`app/target/reports/apidocs/`

O arquivo principal da documentação é:

`index.html`

A documentação também é disponibilizada como produto final por meio do GitHub Pages.

## 3.6 GitHub Actions

O processo automatizado foi configurado no arquivo:

`.github/workflows/build.yml`

O workflow integra o repositório ao processo de construção e executa as principais etapas de validação e geração dos produtos do projeto.

O fluxo implementado inclui:

1. Checkout do código;
2. Configuração do Java 17;
3. Execução dos testes JUnit;
4. Construção com Maven;
5. Geração do Javadoc;
6. Configuração do GitHub Pages;
7. Preparação do artefato para publicação;
8. Deploy da documentação.

O workflow possui dois principais jobs:

- `build`;
- `deploy`.

O job `deploy` depende da conclusão bem-sucedida do job `build`.

Essa organização permite que a publicação somente seja realizada após a conclusão do processo de construção.

## 3.7 GitHub Pages

O GitHub Pages foi configurado como destino de publicação da documentação Javadoc.

A origem de publicação foi configurada como:

`GitHub Actions`

O diretório utilizado como conteúdo para publicação é:

`app/target/reports/apidocs`

Após a execução bem-sucedida do pipeline, a documentação foi disponibilizada publicamente.

---

# 4. Pipeline de construção

O pipeline implementado estabelece uma sequência automatizada entre o código versionado, o processo de construção, os testes, a documentação e a publicação.

O fluxo pode ser representado da seguinte forma:

    Git / GitHub
         │
         ▼
    GitHub Actions
         │
         ▼
    Checkout do código
         │
         ▼
    Configuração do Java 17
         │
         ▼
    Testes JUnit
         │
         ├──────────────► Falha → Pipeline interrompida
         │
         ▼
    Maven Package
         │
         ▼
    Geração do Javadoc
         │
         ▼
    Pages Artifact
         │
         ▼
    Deploy
         │
         ▼
    GitHub Pages
         │
         ▼
    Javadoc publicado

O pipeline estabelece uma relação entre o Sistema de Controle de Versões e o Sistema de Gerenciamento de Construção, permitindo que alterações versionadas no repositório sejam submetidas a um processo automatizado de construção e validação.

A execução automatizada também permite verificar se o projeto continua sendo construído e testado corretamente após uma alteração submetida ao repositório.

---

# 5. Estrutura do projeto

A estrutura principal do projeto é organizada da seguinte maneira:

    gc-entrega-1-git/
    │
    ├── .github/
    │   └── workflows/
    │       └── build.yml
    │
    ├── app/
    │   ├── pom.xml
    │   │
    │   ├── src/
    │   │   ├── main/
    │   │   │   └── java/
    │   │   │       └── br/
    │   │   │           └── com/
    │   │   │               └── luizfernando/
    │   │   │                   └── Calculadora.java
    │   │   │
    │   │   └── test/
    │   │       └── java/
    │   │           └── br/
    │   │               └── com/
    │   │                   └── luizfernando/
    │   │                       └── CalculadoraTest.java
    │   │
    │   └── target/
    │
    ├── scripts/
    │   └── build.sh
    │
    ├── sistema/
    │   ├── index.html
    │   └── style.css
    │
    ├── .gitignore
    └── README.md

Os diretórios `target/` são gerados durante o processo de construção e não são mantidos como arquivos versionados do projeto.

---

# 6. Conceitos de Gerência de Configuração demonstrados

O projeto demonstra, de forma prática, os seguintes conceitos:

| Conceito | Aplicação no projeto |
|---|---|
| Repository | Repositório GitHub |
| Workspace | Ambiente local de desenvolvimento |
| Version | Histórico de versões controlado pelo Git |
| Configuration Item (SCI) | Código, testes, documentação e arquivos de configuração |
| Codeline | Linha de desenvolvimento |
| Branching | Branches de desenvolvimento |
| Merging | Integração de alterações |
| Mainline | Branch `main` |
| Baseline | Tags `baseline-v1.0` e `baseline-v1.1` |
| Release | Configuração identificável para disponibilização |
| System Building | Construção automatizada com Maven/GitHub Actions |
| Automated Testing | Testes JUnit |
| Documentation Generation | Javadoc |
| Continuous Integration | Execução automatizada do workflow |
| Deployment | Publicação no GitHub Pages |

---

# 7. Produtos gerados

A Entrega 2 produz diferentes resultados durante o processo de construção.

## 7.1 Artefato da aplicação

O processo de empacotamento Maven gera o seguinte artefato:

    app/target/gc-entrega-2-1.0.0.jar

Esse arquivo representa o resultado empacotado da aplicação Java.

## 7.2 Documentação

A documentação Javadoc é gerada no diretório:

    app/target/reports/apidocs/

O arquivo inicial da documentação é:

    index.html

## 7.3 Artefato para publicação

O conteúdo do diretório:

    app/target/reports/apidocs

é preparado pelo workflow como artefato destinado ao GitHub Pages.

## 7.4 Produto publicado

Após a conclusão bem-sucedida do processo de construção e deploy, a documentação Javadoc fica disponível publicamente por meio do GitHub Pages.

---

# 8. Relação entre implementação e Gerência de Configuração

A implementação realizada procura estabelecer uma relação prática entre os conceitos estudados na disciplina e as ferramentas utilizadas no projeto.

| Conceito / requisito | Implementação realizada |
|---|---|
| Sistema de Controle de Versões | Git e GitHub |
| Repositório | Repositório `gc-entrega-1-git` |
| Linha principal | Branch `main` |
| Baseline | Tags `baseline-v1.0` e `baseline-v1.1` |
| Sistema de Gerenciamento de Construção | Maven e GitHub Actions |
| Integração com SCV | GitHub Actions integrado ao repositório |
| Construção | Maven `package` |
| Testes automatizados | JUnit |
| Documentação | Javadoc |
| Artefato | Arquivo `.jar` |
| Automação | GitHub Actions |
| Publicação | GitHub Pages |
| Produto final | Javadoc publicado |

A solução demonstra, portanto, uma cadeia integrada de atividades:

    Controle de Versão
            │
            ▼
    Gerenciamento de Construção
            │
            ├── Build
            ├── Testes
            ├── Documentação
            └── Artefatos
                   │
                   ▼
                 Deploy
                   │
                   ▼
           Produto publicado

---

# 9. Produtos e resultados da Entrega 2

Ao final da implementação, foram obtidos os seguintes resultados:

- aplicação Java funcional;
- projeto Maven configurado;
- testes JUnit automatizados;
- build automatizado;
- artefato `.jar` gerado;
- documentação Javadoc gerada;
- workflow GitHub Actions configurado;
- execução automatizada dos testes;
- execução automatizada do processo de construção;
- preparação de artefato para publicação;
- deploy automatizado;
- documentação publicada no GitHub Pages.

A execução do pipeline foi validada com sucesso no GitHub Actions, demonstrando o funcionamento integrado das etapas configuradas.

---

# 10. Links

## Repositório

[GitHub — gc-entrega-1-git](https://github.com/luizfernandotech25/gc-entrega-1-git)

## Produto publicado

[Javadoc — GitHub Pages](https://luizfernandotech25.github.io/gc-entrega-1-git/)

---

# 11. Status do projeto

## Entrega 1 — Controle de Versão

**Concluída**

- Git configurado;
- repositório GitHub configurado;
- políticas de Gerência de Configuração documentadas;
- política de branches definida;
- política de commits definida;
- política de merge definida;
- política de baselines definida;
- política de releases definida;
- branches e merges utilizados;
- baselines estabelecidas;
- processo de controle de versão documentado.

## Entrega 2 — Gerenciamento de Construção

**Concluída**

- aplicação Java criada;
- Maven configurado;
- testes JUnit implementados;
- execução local dos testes validada;
- build local validado;
- artefato `.jar` gerado;
- Javadoc gerado;
- GitHub Actions configurado;
- Java 17 configurado no ambiente de integração;
- testes automatizados integrados ao workflow;
- processo de construção integrado ao workflow;
- geração de documentação integrada ao workflow;
- GitHub Pages configurado;
- artefato preparado para publicação;
- deploy automatizado;
- pipeline executado com sucesso;
- produto publicado.

---

# 12. Gerência de Configuração

Este projeto demonstra, em escala acadêmica, a integração entre diferentes atividades de Gerência de Configuração.

A relação principal implementada pode ser representada da seguinte maneira:

    Sistema de Controle de Versão
                │
                ▼
            Git / GitHub
                │
                ▼
    Sistema de Gerenciamento
          de Construção
                │
                ▼
        GitHub Actions
                │
       ┌────────┼────────┐
       ▼        ▼        ▼
     Build    Testes   Javadoc
       │        │        │
       └────────┼────────┘
                ▼
            Artefatos
                │
                ▼
              Deploy
                │
                ▼
         GitHub Pages
                │
                ▼
       Produto publicado

A implementação procura relacionar os conceitos teóricos de Gerência de Configuração estudados na disciplina com uma solução prática utilizando ferramentas de desenvolvimento, controle de versões, construção automatizada, testes, documentação e integração contínua.

---

# 13. Referência conceitual

A fundamentação conceitual do projeto está relacionada aos conteúdos de Gerência de Configuração estudados na disciplina, especialmente aos conceitos de:

- Sistema de Controle de Versões (SCV);
- Sistema de Gerenciamento de Construção (SGC);
- construção de sistemas;
- integração entre SCV e SGC;
- automação de testes;
- geração de documentação;
- integração contínua;
- baseline;
- mainline;
- release;
- repository;
- system building.

A principal referência conceitual utilizada na disciplina é o material referente ao Capítulo 25 — Gerência de Configuração, baseado em Sommerville.

---

# 14. Conclusão

As duas primeiras entregas permitiram desenvolver progressivamente um projeto orientado aos conceitos de Gerência de Configuração.

Na Entrega 1, foram estabelecidas as práticas de Controle de Versão utilizando Git e GitHub, incluindo políticas para branches, commits, merges, baselines e releases.

Na Entrega 2, essa estrutura foi ampliada com a implementação de um processo automatizado de construção. A aplicação Java passou a contar com gerenciamento de dependências e construção por Maven, testes automatizados utilizando JUnit, geração de documentação Javadoc e um pipeline executado pelo GitHub Actions.

O processo foi complementado pela publicação da documentação no GitHub Pages, permitindo observar o fluxo completo entre o código versionado e o produto disponibilizado.

Dessa forma, o projeto demonstra de maneira prática a integração entre Controle de Versão e Gerenciamento de Construção, associando versionamento, construção, testes, documentação, geração de artefatos e publicação em um fluxo automatizado.

---

# 15. Estrutura da entrega

A documentação e os resultados do projeto estão organizados nos seguintes elementos:

```text
ENTREGA 2
│
├── Repositório GitHub
│   └── gc-entrega-1-git
│
├── Relatório / Documentação
│   └── PDF da Entrega 2
│
├── Evidências
│   └── Capturas de tela da implementação
│
└── Produto publicado
    └── Javadoc no GitHub Pages
```
