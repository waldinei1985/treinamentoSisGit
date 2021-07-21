*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${TEXTO_TELA}   MY ACCOUNT

*** Test Cases ***
Cenario: Cadastro de usuario
    #Abri o Browser
    Open Browser    http://automationpractice.com/index.php     chrome
    #Maximizar o navegador
    Maximize Browser Window
    #Tempo Máximo de espera
    Set Selenium Timeout    60
    #Clicando no elemento login
    Click Element   xpath=//a[@class="login"]
    #Scroll no elemento
    Scroll Element Into View    id=email_create
    #Inserindo informação no campo email
    Input Text  xpath=//input[@id='email_create']       dijamen893@activesniper.com
    #Clicando no elemento criar
    Click Element   xpath=//i[@class="icon-user left"]
    #Aguardando formulário ficar visivel    
    Wait Until Element Is Visible   id=id_gender1
    #Clicando no elemento radio button
    Click Element   id=id_gender1
    #Inserindo informação nos campos obrigatórios
    Input Text  xpath=//input[@id="customer_firstname"]     Waldinei
    Input Text  xpath=//input[@id="customer_lastname"]      Silva
    Input Text  xpath=//input[@id="passwd"]     Teste@123
    Select From List By Value    id:days    5
    Select From List By Value    id:months    9
    Select From List By Value    id:years    1985
    #Scroll no elemento
    Scroll Element Into View    id=address1
    #Inserindo informação nos campos obrigatórios
    Input Text  id=address1     TesteRua
    Input Text  id=city     TesteCidade
    Select From List By Value    id:id_state    9
    Input Text  id=postcode     13190
    Select From List By Value    id:id_country    21
    Input Text  id=phone_mobile     19996137123
    Input Text  id=alias     TesteAutomação
    #Aguardando botão ficar visivel
    Scroll Element Into View   xpath=//button[@type="submit"]/span[text()='Register']
    #Clicando no elemento Register
    Click Element   xpath=//button[@type="submit"]/span[text()='Register']
    #Retorno texto da página
    ${RETORNO_TEXTO_TELA} =   Get Text    xpath=//h1[@class="page-heading"]
    #Comparando os dois textos
    Should Be Equal     ${TEXTO_TELA}   ${RETORNO_TEXTO_TELA} 
    #Fechar o Browser
    Close Browser
   
