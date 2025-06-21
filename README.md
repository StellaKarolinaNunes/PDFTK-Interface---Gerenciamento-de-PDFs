<h1 align="center">
PDFTK Interface - Gerenciamento de PDFs
</h1>

<p align="center">
  <img src="https://img.shields.io/static/v1?label=shell&message=bash&color=blue&style=for-the-badge&logo=gnu-bash"/>
  <img src="https://img.shields.io/static/v1?label=PDFTK&message=CLI&color=blue&style=for-the-badge&logo=adobe-acrobat-reader"/>
  <img src="https://img.shields.io/static/v1?label=License&message=MIT&color=green&style=for-the-badge"/>
  <img src="https://img.shields.io/static/v1?label=STATUS&message=CONCLUÍDO&color=green&style=for-the-badge"/>
</p>

---

# :star2: Sumário

- [Introdução](#introdução)
- [Demonstração](#demonstração)
- [Funcionalidades](#funcionalidades)
- [Instalação](#instalação)
- [Uso](#uso)
- [Exemplos](#exemplos)
- [FAQ / Perguntas Frequentes](#faq--perguntas-frequentes)
- [Contribuição](#contribuição)
- [Boas Práticas](#boas-práticas)
- [Recursos & Links Adicionais](#recursos--links-adicionais)
- [Licença](#licença)
- [Equipe](#equipe)

---

## :books: Introdução

Este projeto traz uma interface em Bash para facilitar o uso do PDFTK no gerenciamento de arquivos PDF, tornando operações como divisão, rotação, criptografia, concatenação e recuperação de PDFs muito mais acessíveis via terminal. O objetivo é simplificar tarefas comuns do dia a dia com PDFTK, centralizando tudo em um menu interativo e amigável.

---

## :rocket: Demonstração


| ![](https://github.com/user-attachments/assets/2286d32e-0fea-42e2-91c5-6e3884f4a9fc)  | 
|---|

> **Nota:**  
> O script requer permissões para executar comandos com `sudo` e espera que o PDFTK esteja disponível via Snap.

---

## :zap: Funcionalidades

- **Instalar PDFTK facilmente**
- **Dividir páginas de um arquivo PDF**
- **Girar páginas específicas ou o PDF todo**
- **Criptografar arquivos PDF**
- **Adicionar marca d'água (background)**
- **Recuperar PDFs corrompidos**
- **Concatenar (unir) múltiplos arquivos PDF**
- **Menu interativo para fácil navegação**

---

## :computer: Instalação

### Pré-requisitos

- [Bash Shell](https://www.gnu.org/software/bash/)
- [Snap](https://snapcraft.io/) (para instalar o PDFTK)
- [PDFTK](https://snapcraft.io/pdftk) (instalado pelo próprio script)
- Permissões de sudo para instalar dependências

### Passo a Passo

1. **Clone este repositório:**
    ```bash
    git clone https://github.com/StellaKarolinaNunes/PDFTK-Interface---Gerenciamento-de-PDFs
    cd PDFTK-Interface---Gerenciamento-de-PDFs
    ```

2. **Dê permissão de execução ao script:**
    ```bash
    chmod +x pdftk_interface.sh
    ```

3. **Execute o script:**
    ```bash
    ./pdftk_interface.sh
    ```

> **Dica:**  
> O PDFTK será instalado automaticamente se não estiver presente.

---

## :wrench: Uso

- Siga o menu interativo.
- Escolha a ação desejada (dividir, girar, criptografar, etc).
- Siga as instruções para informar arquivos, páginas ou opções.

### Principais Comandos no Script

- Instalar PDFTK via Snap
- Dividir páginas: criar novo PDF com páginas selecionadas
- Girar páginas individualmente ou todas
- Criptografar com senha definida pelo usuário
- Adicionar marca d'água (background)
- Recuperar PDFs corrompidos (reparar estrutura)
- Concatenar (unir) múltiplos PDFs em um só

---

## :bulb: Exemplos

**Dividir PDF:**  
Escolha a opção [2], informe o nome do arquivo e o intervalo de páginas.

**Girar PDF:**  
Escolha [3], indique o arquivo e a página a girar, depois a rotação desejada.

**Criptografar PDF:**  
Opção [4], informe o arquivo e a senha.

**Adicionar marca d'água:**  
Opção [5], informe o PDF e o arquivo de marca d'água (PDF ou imagem).

**Recuperar PDF corrompido:**  
Opção [6], informe o arquivo problemático.

**Concatenar PDFs:**  
Opção [7], informe todos os arquivos a unir, separados por espaço.

---

## :question: FAQ / Perguntas Frequentes

### 1. Preciso instalar o PDFTK manualmente?
Não, o próprio script oferece uma opção para instalar via Snap.

### 2. Funciona em qualquer sistema?
O script foi desenvolvido para sistemas Linux com suporte ao Bash e Snap.

### 3. Como faço para usar no Windows?
Use um terminal compatível com Bash ou utilize o WSL.

### 4. O script altera meus arquivos originais?
Não, todos os arquivos gerados têm nomes diferenciados, preservando os originais.

### 5. O PDFTK é seguro?
Sim, é uma ferramenta open source amplamente utilizada para manipulação de PDFs.

### 6. Encontrei um erro, o que faço?
Verifique se o PDFTK está instalado corretamente. Consulte as permissões dos arquivos. Abra uma [issue](https://github.com/SeuUsuario/seu-repo/issues) se o problema persistir.

### 7. Como contribuir com novas funcionalidades?
Veja a seção de contribuição abaixo!

### 8. Não encontrou sua dúvida aqui?
Abra uma [issue](https://github.com/StellaKarolinaNunes/PDFTK-Interface---Gerenciamento-de-PDFs/issues/new) com sua dúvida ou sugestão.

---

## :handshake: Contribuição

Contribuições são bem-vindas!

1. [Leia o guia de contribuição](./CONTRIBUTING.md)
2. Faça um fork do repositório.
3. Crie uma branch:  
   `git checkout -b feature/seu-recurso`
4. Faça commits claros e objetivos.
5. Abra um Pull Request detalhado.

**Dicas para contribuir:**

- Explique sua motivação.
- Siga a organização do script.
- Teste suas alterações.

---

## :bookmark_tabs: Boas Práticas

- Código limpo e comentado.
- Mensagens de commit objetivas.
- Teste todas as funções antes de submeter PR.
- Atualize seu fork antes de abrir um PR.

---

## :link: Recursos & Links Adicionais

- [PDFTK - Documentação](https://www.pdflabs.com/docs/pdftk-man-page/)
- [Snapcraft PDFTK](https://snapcraft.io/pdftk)
- [Bash Scripting Guide](https://linuxconfig.org/bash-scripting-tutorial-for-beginners)
- [Open Source Contribution Guide](https://opensource.guide/how-to-contribute/)

---

## :page_facing_up: Licença

Este projeto está sob a [Licença MIT](./LICENSE).  
Sinta-se livre para usar, modificar e distribuir, sempre mantendo referência ao repositório original.

---

## :trophy: Equipe

**Desenvolvimento:**  

- [Stella Karolina Nunes Peixoto](https://github.com/StellaKarolinaNunes)

- *Professor* [Deriks Karlay Dias Costa](https://github.com/karlaycosta)

---

> _Projeto acadêmico IFPA | Ciência da Computação – Interface Bash para PDFTK, referência para automações de manipulação de PDF via terminal._
