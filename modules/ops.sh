#!/bin/bash
verificar_arquivo() {
    local arquivo="$1"
    if [[ ! -f "$arquivo" ]]; then
        echo -e "${VERMELHO}Erro: O arquivo '$arquivo' nao foi encontrado!${NC}"
        return 1
    fi
    return 0
}
dividir_paginas_pdf() {
    clear
    echo "==============================================="
    echo "  Dividir páginas de um arquivo PDF"
    echo "==============================================="
    echo -n "Informe o nome do arquivo PDF: "
    read -r nome_arquivo
    verificar_arquivo "$nome_arquivo" || { read -r enter; return; }
    echo -n "Informe a página inicial e a página final para dividir (ex: 1 5): "
    read -r pag_inicial pag_final
    if pdftk "$nome_arquivo" cat "$pag_inicial"-"$pag_final" output "${nome_arquivo%.*}_dividido.pdf"; then
        echo -e "\n${VERDE}Páginas divididas com sucesso!${NC}"
    else
        echo -e "\n${VERMELHO}Erro ao dividir as páginas!${NC}"
    fi
    echo -e "\nPressione enter para continuar"
    read -r enter
}
girar_paginas_pdf() {
    clear
    echo "==============================================="
    echo "       Girar páginas de um arquivo PDF"
    echo "==============================================="
    echo -n "Informe o nome do arquivo PDF: "
    read -r nome_arquivo
    verificar_arquivo "$nome_arquivo" || { read -r enter; return; }
    echo -n "Informe a página a ser girada (deixe em branco para todas as páginas): "
    read -r pagina
    echo -e "\nEscolha a rotação desejada:"
    echo " 1 - 0º (não girar)"
    echo " 2 - 90º (horário)"
    echo " 3 - 180º"
    echo " 4 - 270º (anti-horário)"
    read -r escolha
    case $escolha in
        1) paginasentido="north" ;;
        2) paginasentido="east" ;;
        3) paginasentido="south" ;;
        4) paginasentido="west" ;;
        *) echo -e "${VERMELHO}Opção inválida!${NC}" ; return ;;
    esac
    if [[ -z "$pagina" ]]; then
        comando="pdftk \"$nome_arquivo\" cat 1-end$paginasentido output \"${nome_arquivo%.*}_girado.pdf\""
    else
        total_paginas=$(pdftk "$nome_arquivo" dump_data | grep NumberOfPages | awk '{print $2}')
        if [[ "$pagina" -lt 1 || "$pagina" -gt "$total_paginas" ]]; then
            echo -e "${VERMELHO}Erro: Página fora do intervalo válido (1 a $total_paginas)!${NC}"
            read -r -p "Pressione Enter para continuar..."
            return
        fi
        comando="pdftk \"$nome_arquivo\" cat "
        for ((i = 1; i <= total_paginas; i++)); do
            if [[ "$i" -eq "$pagina" ]]; then
                comando+="$i$paginasentido "
            else
                comando+="$i "
            fi
        done
        comando+="output \"${nome_arquivo%.*}_girado.pdf\""
    fi
    if eval "$comando"; then
        echo -e "\n${VERDE}PDF girado com sucesso!${NC}"
    else
        echo -e "\n${VERMELHO}Erro ao girar o PDF!${NC}"
    fi
    echo -e "\nPressione Enter para continuar"
    read -r enter
}
criptografar_pdf() {
    clear
    echo "==============================================="
    echo "   Criptografar um arquivo PDF"
    echo "==============================================="
    echo -n "Informe o nome do arquivo PDF: "
    read -r nome_arquivo
    verificar_arquivo "$nome_arquivo" || { read -r enter; return; }
    read -s -p "Informe a senha de encriptação: " senha
    echo
    comando="pdftk \"$nome_arquivo\" output \"${nome_arquivo%.*}_encriptado.pdf\" owner_pw foo user_pw \"\$senha\""
    if eval "$comando"; then
        echo -e "\n${VERDE}PDF criptografado com sucesso!${NC}"
    else
        echo -e "\n${VERMELHO}Erro ao criptografar o PDF!${NC}"
    fi
    echo -e "\nPressione enter para continuar"
    read -r enter
}
adicionar_marca_dagua_pdf() {
    clear
    echo "==============================================="
    echo "    Adicionar marca d'água a um PDF"
    echo "==============================================="
    echo -n "Informe o nome do arquivo PDF: "
    read -r nome_arquivo
    verificar_arquivo "$nome_arquivo" || { read -r enter; return; }
    echo -n "Informe o nome do arquivo de marca d'água (imagem ou PDF): "
    read -r nome_arquivo_marca_dagua
    verificar_arquivo "$nome_arquivo_marca_dagua" || { read -r enter; return; }
    if pdftk "$nome_arquivo" background "$nome_arquivo_marca_dagua" output "${nome_arquivo%.*}_com_marcaDagua.pdf"; then
        echo -e "\n${VERDE}Marca d'água adicionada com sucesso!${NC}"
    else
        echo -e "\n${VERMELHO}Erro ao adicionar marca d'água!${NC}"
    fi
    echo -e "\nPressione enter para continuar"
    read -r enter
}
recuperar_pdf_corrompido() {
    clear
    echo "==============================================="
    echo "    Recuperar um PDF corrompido"
    echo "==============================================="
    echo -n "Informe o nome do arquivo PDF corrompido: "
    read -r nome_arquivo
    verificar_arquivo "$nome_arquivo" || { read -r enter; return; }
    if pdftk "$nome_arquivo" output "${nome_arquivo%.*}_recuperado.pdf"; then
        echo -e "\n${VERDE}PDF recuperado com sucesso!${NC}"
    else
        echo -e "\n${VERMELHO}Erro ao recuperar o PDF!${NC}"
    fi
    echo -e "\nPressione enter para continuar"
    read -r enter
}
concatenar_pdfs() {
    clear
    echo "==============================================="
    echo "   Concatenar (unir) múltiplos PDFs"
    echo "==============================================="
    echo -n "Informe os nomes dos arquivos PDF a serem concatenados (separados por espaço): "
    read -r -a arquivos
    for arq in "${arquivos[@]}"; do
        verificar_arquivo "$arq" || { read -r enter; return; }
    done
    if pdftk "${arquivos[@]}" cat output "${arquivos[0]%.*}_concatenados.pdf"; then
        echo -e "\n${VERDE}Arquivos concatenados com sucesso!${NC}"
    else
        echo -e "\n${VERMELHO}Erro ao concatenar os arquivos!${NC}"
    fi
    echo -e "\nPressione enter para continuar"
    read -r enter
}
