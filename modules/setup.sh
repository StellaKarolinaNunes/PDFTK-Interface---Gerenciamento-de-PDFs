#!/bin/bash
VERDE='\033[0;32m'
VERMELHO='\033[0;31m'
AZUL='\033[0;34m'
NC='\033[0m'
checar_dependencia() {
    if ! command -v pdftk &> /dev/null; then
        echo -e "${VERMELHO}Erro: PDFTK nao encontrado.${NC}"
        echo -e "Deseja instalar agora? (s/n)"
        read -r resposta
        if [[ "$resposta" == "s" || "$resposta" == "S" ]]; then
            instalar_pdftk
        else
            echo -e "${AZUL}O programa requer PDFTK para funcionar. Saindo...${NC}"
            exit 1
        fi
    fi
}
mostrar_barra() {
    local pid=$1
    local barra="########################################"
    local espaco="                                        "
    local count=0
    echo -n "Progresso: ["
    while kill -0 "$pid" 2>/dev/null; do
        count=$(( (count + 1) % 40 ))
        printf "\rProgresso: [%s%s]" "${barra:0:count}" "${espaco:count}"
        sleep 0.2
    done
    printf "\rProgresso: [%s] OK!\n" "$barra"
}
instalar_pdftk() {
    clear
    echo "==============================================="
    echo "       Instalando o PDFTK..."
    echo "==============================================="
    sudo apt update -y &> /dev/null &
    mostrar_barra $!
    sudo apt-get install snap -y &> /dev/null &
    mostrar_barra $!
    sudo snap install pdftk &> /dev/null &
    mostrar_barra $!
    echo -e "\n${VERDE}PDFTK instalado com sucesso!${NC}"
    echo -e "\nPressione enter para voltar ao menu principal"
    read -r enter
}
desinstalar_tudo() {
    clear
    echo "==============================================="
    echo "       Desinstalando o PDFTK..."
    echo "==============================================="
    sudo snap remove pdftk &> /dev/null &
    mostrar_barra $!
    echo -e "\n${VERDE}PDFTK removido com sucesso!${NC}"
    echo -e "\nPressione enter para voltar ao menu principal"
    read -r enter
}
sair_programa() {
    clear
    echo "==============================================="
    echo "          Saindo do programa..."
    echo "==============================================="
    exit 0
}
