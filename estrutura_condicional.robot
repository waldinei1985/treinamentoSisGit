*** Variables ***
@{Numeros}=     10  15  5   20  25  30  5


*** Test Cases ***
Validar Idade
    Verifica Maior Idade    19
    Verifica Idade      19
    

Validando Existencia
    Imprimir numero  @{Numeros}
    Imprimir par ou impar   @{Numeros}

Imprimir
    #@{Numeros} create list     1   2   3   4   5   6   7   8   9   10
    Verificar numeros   @{Numeros}
    #Verificar numeros


*** Keywords ***
Verifica Maior Idade
    [Arguments]    ${idade}
	IF  '${idade}' >= "18"
        log to console  ...
		Log To Console    Maior de Idade 
	END

Imprimir numero
    [Arguments]     @{numeros}
    FOR     ${num}  IN  @{numeros}
        IF  '${num}' == "5"
            log to console  ...
		    Log To Console  ${num} Sucesso
        END    
	    
    END

Verifica Idade
    [Arguments]    ${idade}
	IF  '${idade}' >= "18"
        Log To Console  ...
		Log To Console    Maior de Idade 
    ELSE
        log to console  ...
        Log To Console    Menor de Idade
	END

Imprimir par ou impar
    [Arguments]     @{numeros}
    FOR  ${num}    IN  @{numeros}
        ${Resultado}=     evaluate      ${num}%2
        IF  '${Resultado}' == "0"
            log to console  ...
            log to console  ${num} é Par
        ELSE
            log to console  ...    
            log to console  ${num} é Impar
        END
    END

Verificar numeros
    [Arguments]     @{Numeros}
    FOR  ${Numero_Atual}    IN      @{Numeros}
    #FOR  ${Numero_Atual}    IN RANGE    0   11     
        IF  '${Numero_Atual}' == "5"
            log to console  ...
            log to console  Estou no numero ${Numero_Atual} 
        ELSE IF  '${Numero_Atual}' == "8"
            log to console   ...
            log to console   Estou no numero ${Numero_Atual}
        ELSE
            log to console   ...
            log to console  Os numeros 5 e 8 nao foram encontrados
        END
    END