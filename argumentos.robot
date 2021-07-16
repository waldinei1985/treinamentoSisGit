*** Test Cases ***
Calculadora
    ${Resultado_Soma}    Somar os números  10  10
    ${Resultado_Soma_Embutida}    Somar os números "15" e "15"
    Log To Console  ${Resultado_Soma}
    Log To Console  ${Resultado_Soma_Embutida}

    ${Resultado_Subtracao}    Subtrair os números  15  10
    ${Resultado_Subtracao_Embutida}    Subtrair os números "15" e "5"
    Log To Console  ${Resultado_Subtracao}
    Log To Console  ${Resultado_Subtracao_Embutida}

    ${Resultado_Divisao}    Dividir os números  20  5
    ${Resultado_Divisao_Embutida}    Dividir os números "20" e "4"
    Log To Console  ${Resultado_Divisao}
    Log To Console  ${Resultado_Divisao_Embutida}

    ${Resultado_Multiplicacao}    Multiplicar os números  10  2
    ${Resultado_Multiplicacao_Embutida}    Multiplicar os números "10" e "3"
    Log To Console  ${Resultado_Multiplicacao}
    Log To Console  ${Resultado_Multiplicacao_Embutida}

Retornar e-mail
    ${Email}    Seu e-mail  waldinei
    Log To Console  ${Email}




*** Keywords ***
Somar os números
    [Arguments]     ${NUM_A}    ${NUM_B}
    ${SOMAR}    Evaluate    ${NUM_A}+${NUM_B}
    [Return]    ${SOMAR}

Somar os números "${NUM_A}" e "${NUM_B}"
    ${SOMAR}    Evaluate    ${NUM_A}+${NUM_B}
    [Return]    ${SOMAR}

Subtrair os números
    [Arguments]     ${NUM_A}    ${NUM_B}
    ${SUBTRACAO}    Evaluate    ${NUM_A}-${NUM_B}
    [Return]    ${SUBTRACAO}

Subtrair os números "${NUM_A}" e "${NUM_B}"
    ${SUBTRACAO}    Evaluate    ${NUM_A}-${NUM_B}
    [Return]    ${SUBTRACAO}

Dividir os números
    [Arguments]     ${NUM_A}    ${NUM_B}
    ${DIVISAO}    Evaluate    ${NUM_A}/${NUM_B}
    [Return]    ${DIVISAO}

Dividir os números "${NUM_A}" e "${NUM_B}"
    ${DIVISAO}    Evaluate    ${NUM_A}/${NUM_B}
    [Return]    ${DIVISAO}

Multiplicar os números
    [Arguments]     ${NUM_A}    ${NUM_B}
    ${MULTIPLICACAO}    Evaluate    ${NUM_A}*${NUM_B}
    [Return]    ${MULTIPLICACAO}

Multiplicar os números "${NUM_A}" e "${NUM_B}"
    ${MULTIPLICACAO}    Evaluate    ${NUM_A}*${NUM_B}
    [Return]    ${MULTIPLICACAO}

Seu e-mail
    [Arguments]     ${NUM_A}
    [Return]    ${NUM_A}@sisconsultoria.com.br