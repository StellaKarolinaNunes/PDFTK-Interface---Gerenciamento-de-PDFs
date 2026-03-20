#!/bin/bash
source ./modules/setup.sh
source ./modules/ops.sh
checar_dependencia
Menu() {
    while true; do
        clear
        echo -e "${AZUL}==============================================="
        echo "  PDFTK Interface - Gerenciamento de PDFs"
        echo -e "===============================================${NC}"
        echo "Escolha uma opção:"
        echo
        echo " [1] - Instalar PDFTK"
        echo " [2] - Dividir páginas de um arquivo PDF"
        echo " [3] - Girar páginas de um arquivo PDF"
        echo " [4] - Criptografar um arquivo PDF"
        echo " [5] - Adicionar marca d'água a um PDF"
        echo " [6] - Recuperar um PDF corrompido"
        echo " [7] - Concatenar (unir) múltiplos PDFs"
        echo " [8] - Desinstalar PDFTK"
        echo " [9] - Sair do programa"
        echo 
        echo -e "${AZUL}===============================================${NC}"
        echo -n "Escolha uma opção: "
        read -r opcao
        case $opcao in
            1) instalar_pdftk ;;
            2) dividir_paginas_pdf ;;
            3) girar_paginas_pdf ;;
            4) criptografar_pdf ;;
            5) adicionar_marca_dagua_pdf ;;
            6) recuperar_pdf_corrompido ;;
            7) concatenar_pdfs ;;
            8) desinstalar_tudo ;;
            9) sair_programa ;;
            *) echo -e "${VERMELHO}Opção inválida. Tente novamente.${NC}" ;;
        esac
    done
}
Menu
