*** Variable ***
&{Dados_Pessoais}=  nome=Waldinei   idade=35    sexo=Masculino  estadoCivil=Casado  dataNascimento=05/09/198    cidade=Monte Mor
@{Marcas_Celulares}=    Samsung  Xiaomi  Motorola    Realme  Huawei  Apple
&{Nota}=     nota1=5     nota2=7     nota3=9
@{Notas}=    5  7  9  

*** Test Cases ***
Imprimindo Variável do tipo Dicionário Completo
    Log To Console      ${Dados_Pessoais}
    
Imprimindo Variável do tipo Dicionário uma por vez
    Log To Console      ${Dados_Pessoais.nome}
    Log To Console      ${Dados_Pessoais.idade}
    Log To Console      ${Dados_Pessoais.sexo}
    Log To Console      ${Dados_Pessoais.estadoCivil}
    Log To Console      ${Dados_Pessoais.dataNascimento}
    Log To Console      ${Dados_Pessoais.cidade}

Imprimindo Variável do tipo Lista Completa
    Log To Console      ${Marcas_Celulares}

Imprimindo Variável do tipo Lista uma por vez
    Log To Console      ${Marcas_Celulares[0]}
    Log To Console      ${Marcas_Celulares[1]}
    Log To Console      ${Marcas_Celulares[2]}
    Log To Console      ${Marcas_Celulares[3]}
    Log To Console      ${Marcas_Celulares[4]}
    Log To Console      ${Marcas_Celulares[5]}  

Imprimindo Variável do tipo Dicionário o cálculo da média do aluno
    ${Media}=       Evaluate    (${Nota.nota1}+${Nota.nota2}+${Nota.nota3})/3
    Log To Console      ${Media}

Imprimindo Variável do tipo Lista o cálculo da média do aluno
    ${Calculo_Media}=       Evaluate    (${Notas[0]}+${Notas[1]}+${Notas[2]})/3
    Log To Console      ${Calculo_Media}

