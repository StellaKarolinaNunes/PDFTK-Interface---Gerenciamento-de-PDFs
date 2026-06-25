<div align="center">

# PDFTK Interface

### Ferramenta em Bash para gerenciamento de arquivos PDF no terminal

<a href="https://github.com/StellaKarolinaNunes/PDFTK-Interface---Gerenciamento-de-PDFs">
  <img src="./assets/images/banner.png" alt="Banner do projeto PDFTK Interface" width="100%">
</a>

<br>

<img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black" alt="Linux">

<img src="https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white" alt="Bash">

<img src="https://img.shields.io/badge/PDFTK-PDF%20Toolkit-D32F2F?style=for-the-badge&logo=adobeacrobatreader&logoColor=white" alt="PDFTK">

<img src="https://img.shields.io/badge/Terminal-111111?style=for-the-badge&logo=windowsterminal&logoColor=white" alt="Terminal">

<img src="https://img.shields.io/badge/Status-Concluído-2EA44F?style=for-the-badge" alt="Status do projeto">

<br><br>

<p align="center">
  <a href="https://github.com/StellaKarolinaNunes/PDFTK-Interface---Gerenciamento-de-PDFs">
    <img src="https://img.shields.io/badge/⌘%20Explorar%20Código--Fonte-181717?style=for-the-badge&logo=github&logoColor=white" alt="Explorar Código-Fonte">
  </a>
  <a href="./fluxograma/FLUXOGRAMA.md">
    <img src="https://img.shields.io/badge/◈%20Ver%20Fluxograma%20do%20Sistema-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white" alt="Ver Fluxograma do Sistema">
  </a>
</p>

</div>

---

## Sobre o projeto

O **PDFTK Interface** é uma ferramenta desenvolvida em **Shell Script com Bash** para simplificar o gerenciamento de arquivos PDF diretamente no terminal Linux.

A aplicação oferece uma interface interativa para facilitar o uso do **PDFTK**, reunindo em um único menu operações como divisão, rotação, concatenação, criptografia, recuperação de arquivos e aplicação de marca d'água.

O projeto foi desenvolvido como atividade acadêmica da disciplina de **Shell Script**, com foco na automação de tarefas, organização de scripts em módulos, validação de arquivos e uso de ferramentas de linha de comando.

> Este projeto foi desenvolvido para fins educacionais e de portfólio. Antes de manipular documentos importantes, recomenda-se testar as operações em cópias dos arquivos originais.

---

## Objetivo

O objetivo do projeto é tornar tarefas comuns de manipulação de PDFs mais acessíveis para usuários que não desejam memorizar comandos extensos do PDFTK.

A ferramenta busca demonstrar conceitos importantes de programação em Bash, como:

* criação de menus interativos;
* modularização de scripts;
* validação de arquivos e diretórios;
* instalação e gerenciamento de dependências;
* automação de comandos;
* tratamento básico de erros;
* manipulação de documentos no terminal;
* organização de fluxos de execução.

---

## Problema

O PDFTK é uma ferramenta poderosa para manipular documentos PDF, mas seus comandos podem ser pouco intuitivos para usuários iniciantes.

Operações como dividir páginas, unir arquivos, aplicar senha, rotacionar documentos ou recuperar PDFs corrompidos normalmente exigem conhecimento prévio dos parâmetros utilizados no terminal.

O PDFTK Interface foi criado para centralizar essas operações em um menu organizado, reduzindo a complexidade do uso direto da ferramenta.

---

## Solução desenvolvida

A solução consiste em uma interface de terminal construída em Bash que organiza as funcionalidades do PDFTK em opções guiadas.

O script principal apresenta o menu e direciona o usuário para módulos específicos. Esses módulos concentram funções relacionadas à instalação do PDFTK, verificação de dependências e execução das operações de manipulação de PDF.

A estrutura permite adicionar novos recursos sem concentrar toda a lógica em um único arquivo.

---

## Funcionalidades

* **Instalação do PDFTK:** verificação e instalação da ferramenta quando necessário.
* **Desinstalação do PDFTK:** remoção da dependência por meio do menu.
* **Divisão de PDFs:** separação de páginas ou intervalos de páginas de um documento.
* **Rotação de Páginas:** rotação de páginas específicas ou do arquivo completo.
* **Concatenação de PDFs:** união de vários documentos em um único arquivo.
* **Criptografia:** proteção de arquivos PDF com senha.
* **Marca d'água:** aplicação de arquivo PDF como plano de fundo em outro documento.
* **Recuperação de PDFs:** tentativa de recuperação de arquivos corrompidos.
* **Validação de Arquivos:** verificação de existência e extensão dos documentos informados.
* **Menu Interativo:** navegação organizada diretamente pelo terminal.
* **Organização Modular:** separação entre setup, dependências e operações de PDF.
* **Fluxograma do Sistema:** documentação visual do fluxo principal da aplicação.

---

## Tecnologias utilizadas

| Tecnologia | Aplicação no projeto                                    |
| ---------- | ------------------------------------------------------- |
| Bash       | Linguagem principal dos scripts                         |
| GNU Bash   | Interpretador para execução no terminal                 |
| PDFTK      | Manipulação, divisão, união, rotação e proteção de PDFs |
| Snap       | Instalação e gerenciamento da dependência PDFTK         |
| Linux      | Ambiente principal de execução                          |
| Mermaid    | Diagramação do fluxograma                               |
| Git        | Controle de versão                                      |
| GitHub     | Hospedagem do repositório                               |

---

## Destaques técnicos

* Aplicação executada totalmente no terminal;
* Interface guiada por menu interativo;
* Separação entre script principal, setup e operações;
* Automação de comandos do PDFTK;
* Validação de arquivos antes da execução;
* Estrutura preparada para novas operações;
* Redução da complexidade de comandos manuais;
* Uso de ferramentas nativas do ecossistema Linux;
* Projeto voltado para aprendizado de Bash e automação.

---

## Fluxo de funcionamento

```text
Usuário inicia o sistema
        │
        ▼
Menu principal exibido
        │
        ├── Instalar ou verificar PDFTK
        ├── Dividir PDF
        ├── Rotacionar PDF
        ├── Concatenar PDFs
        ├── Criptografar PDF
        ├── Aplicar marca d'água
        ├── Recuperar PDF
        ├── Desinstalar PDFTK
        └── Sair
        │
        ▼
Usuário informa os arquivos necessários
        │
        ▼
Sistema valida os caminhos informados
        │
        ▼
Comando PDFTK é executado
        │
        ▼
Arquivo resultante é salvo no destino escolhido
```

> Para visualizar a lógica detalhada do sistema, consulte o arquivo [FLUXOGRAMA.md](./fluxograma/FLUXOGRAMA.md).

---

## Preview

<div align="center">

<img src="./assets/images/tela_principal.png" width="42%" alt="Tela principal do PDFTK Interface">

</div>

---

## Estrutura do projeto

```bash
PDFTK-Interface---Gerenciamento-de-PDFs/
├── assets/
│   └── images/
│       ├── banner.png
│       └── tela_principal.png
│
├── fluxograma/
│   └── FLUXOGRAMA.md
│
├── modules/
│   ├── setup.sh
│   └── ops.sh
│
├── pdftk.sh
├── LICENSE
└── README.md
```

### Responsabilidade dos arquivos

| Arquivo                    | Responsabilidade                                        |
| -------------------------- | ------------------------------------------------------- |
| `pdftk.sh`                 | Arquivo principal com o menu interativo                 |
| `modules/setup.sh`         | Instalação, desinstalação e verificação de dependências |
| `modules/ops.sh`           | Operações de manipulação de arquivos PDF                |
| `fluxograma/FLUXOGRAMA.md` | Fluxograma e documentação visual do sistema             |

---

## Como executar o projeto

### Pré-requisitos

Antes de iniciar, é necessário ter instalado:

* sistema operacional Linux ou ambiente compatível com Bash;
* GNU Bash;
* Git;
* `snapd`, caso a instalação do PDFTK seja realizada via Snap;
* permissões administrativas para instalação de dependências;
* permissões de leitura e escrita nos diretórios utilizados.

### 1. Clone o repositório

```bash
git clone https://github.com/StellaKarolinaNunes/PDFTK-Interface---Gerenciamento-de-PDFs.git
```

### 2. Acesse a pasta do projeto

```bash
cd PDFTK-Interface---Gerenciamento-de-PDFs
```

### 3. Dê permissão de execução ao script

```bash
chmod +x pdftk.sh
```

### 4. Execute a ferramenta

```bash
./pdftk.sh
```

> O sistema verifica a disponibilidade do PDFTK e apresenta opções para instalação quando necessário.

---

## Exemplo de uso

```bash
./pdftk.sh
```

Após iniciar, escolha uma operação no menu:

```text
1. Instalar PDFTK
2. Dividir PDF
3. Rotacionar PDF
4. Concatenar PDFs
5. Criptografar PDF
6. Adicionar marca d'água
7. Recuperar PDF
8. Desinstalar PDFTK
0. Sair
```

Em seguida, informe os caminhos solicitados e acompanhe o resultado exibido no terminal.

---

## Boas práticas de uso

* Mantenha uma cópia original dos documentos antes de editá-los;
* Verifique os caminhos dos arquivos antes de confirmar uma operação;
* Utilize senhas fortes ao proteger PDFs;
* Teste a recuperação ou restauração de arquivos em uma pasta separada;
* Evite sobrescrever o documento original sem confirmação;
* Não compartilhe documentos sensíveis sem autorização;
* Confirme se o arquivo de saída foi criado corretamente antes de remover cópias anteriores.

---

## Roadmap

### Estabilidade e experiência

* [x] Interface modularizada em Bash;
* [x] Menu interativo no terminal;
* [x] Verificação básica de dependências;
* [x] Validação de existência de arquivos;
* [x] Instalação e desinstalação do PDFTK;
* [x] Barra de progresso durante instalação;
* [x] Divisão, rotação e concatenação de PDFs;
* [x] Proteção de arquivos PDF;
* [x] Aplicação de marca d'água;
* [x] Recuperação básica de PDFs.

### Produtividade

* [ ] Processamento em lote para uma pasta inteira;
* [ ] Personalização do nome do arquivo de saída;
* [ ] Histórico das últimas operações;
* [ ] Registro de logs com data e status;
* [ ] Extração de texto de documentos PDF;
* [ ] Pré-visualização de informações do arquivo;
* [ ] Contagem de páginas antes da operação.

### Recursos avançados

* [ ] Conversão de imagens para PDF;
* [ ] Conversão de PDF para imagens;
* [ ] Compressão de arquivos PDF;
* [ ] Edição de metadados;
* [ ] Mesclagem com ordem personalizada;
* [ ] Extração de páginas específicas;
* [ ] Criação de PDFs protegidos com permissões específicas.

### Evoluções futuras

* [ ] Instalação global pelo `PATH`;
* [ ] Interface gráfica com `zenity` ou `yad`;
* [ ] Suporte a diferentes distribuições Linux;
* [ ] Integração com armazenamento em nuvem;
* [ ] Notificações de conclusão de tarefas;
* [ ] Testes automatizados para módulos Bash.

---

## Contribuição

Contribuições são bem-vindas.

```bash
# Faça um fork do repositório no GitHub

# Clone o seu fork
git clone https://github.com/SEU-USUARIO/PDFTK-Interface---Gerenciamento-de-PDFs.git

# Acesse a pasta do projeto
cd PDFTK-Interface---Gerenciamento-de-PDFs

# Crie uma branch para sua alteração
git checkout -b feature/nova-funcionalidade

# Dê permissão de execução ao script
chmod +x pdftk.sh

# Teste o projeto
./pdftk.sh

# Adicione as alterações
git add .

# Crie um commit descritivo
git commit -m "feat: adiciona nova funcionalidade"

# Envie a branch para o GitHub
git push origin feature/nova-funcionalidade
```

Depois, abra um Pull Request explicando:

* qual problema foi resolvido;
* quais arquivos foram alterados;
* como a funcionalidade foi testada;
* quais operações de PDF foram impactadas;
* se existem novas dependências.

### Diretrizes

* Mantenha o código organizado e comentado;
* Preserve a divisão entre módulos;
* Utilize nomes claros para funções e variáveis;
* Valide os arquivos informados pelo usuário;
* Evite sobrescrever documentos sem confirmação;
* Não inclua PDFs pessoais ou documentos sensíveis no repositório;
* Atualize o README ao adicionar novas operações;
* Preserve compatibilidade com GNU Bash.

---

## Licença

Este projeto está licenciado sob a [Licença MIT](LICENSE).

```text
MIT License

Você pode usar, modificar e distribuir este projeto,
desde que mantenha os créditos e a referência ao repositório original.
```

---

## Créditos

### Desenvolvimento e contexto acadêmico

* **Desenvolvimento principal:** [Stella Karolina Nunes](https://github.com/StellaKarolinaNunes)
* **Instituição:** Instituto Federal de Educação, Ciência e Tecnologia do Pará — Campus Tucuruí
* **Curso:** Bacharelado em Ciência da Computação
* **Disciplina:** Shell Script
* **Professor orientador:** [Alex Santos de Oliveira](https://github.com/alex2024383)

### Tecnologias e recursos

* **Automação e scripts:** [GNU Bash](https://www.gnu.org/software/bash/)
* **Manipulação de PDFs:** [PDFTK](https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/)
* **Gerenciamento de dependências:** [Snapcraft](https://snapcraft.io/)
* **Fluxogramas:** [Mermaid](https://mermaid.js.org/)
* **Controle de versão:** Git e GitHub
* **Badges:** [Shields.io](https://shields.io/)
