*** Variable ***
${NOME}    Waldinei
&{ANIMAL}   especie=Reptil  nome=Lagarto    quantidade=2
@{COMPRAS}  chocolate   batata frita    salgadinho  danone  sorvete

*** Test Cases ***

Variável Simples
    Log To Console  ${NOME}

Variável Dicionário
    Log To Console  ${ANIMAL}

Variável Lista
    Log To Console  ${COMPRAS}    
