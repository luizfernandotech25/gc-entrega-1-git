# GC - Entrega 1 - Git

Projeto prático da disciplina de Gerência de Configuração.

## Objetivo

Demonstrar conceitos de Controle de Versão utilizando Git e GitHub.

## Conceitos trabalhados

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

## Políticas de Gerência de Configuração

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

Exemplos utilizados no projeto:

- `docs: adiciona README inicial do projeto`
- `docs: adiciona politica de branches`
- `docs: adiciona registro do projeto`
- `feat: adiciona sistema e processo de build`

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

## Processo de Controle de Versão

O fluxo adotado no projeto é:

1. Desenvolvimento no Workspace;
2. Criação de uma branch para novas funcionalidades;
3. Realização de alterações;
4. Registro das alterações por meio de commits;
5. Testes da funcionalidade;
6. Merge da branch na `main`;
7. Estabelecimento de uma baseline quando a configuração estiver estável;
8. Criação de uma Release quando a versão estiver pronta para disponibilização.- Configuration Item (SCI)
- Codeline
- Branching
- Merging
- Mainline
- Baseline
- Release
- Configuration Control
- System Building

## Política de Branches

Novas funcionalidades são desenvolvidas em branches do tipo `feature/*`.
Após serem concluídas e testadas, podem ser integradas à branch `main`.
