*** Variables ***
@{Marcas_Celulares}=    Samsung  Xiaomi  Motorola    Realme  Huawei  Apple


*** Test Cases ***
Imprimir lista de números
    Imprimir números de 0 a 10

Imprimir lista crescente
    Imprimir lista formato crescente  10

Imprimir lista
    Imprimir lista recebida  @{Marcas_Celulares}
    




*** Keywords ***
Imprimir números de 0 a 10
    FOR     ${NUM}  IN RANGE    0   11
        Log To Console    ${NUM}
    END

Imprimir lista formato crescente
    [Arguments]     ${Maximo}
    FOR     ${NUM}  IN RANGE    0   ${Maximo}
        Log To Console    ${NUM}
    END

Imprimir lista recebida
    [Arguments]     @{Celulares}
    FOR     ${Celular}  IN  @{Celulares}
        Log To Console    ${Celular}
    END
