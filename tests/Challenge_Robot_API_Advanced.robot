*** Settings ***
Documentation       Exemplos da própria Library: https://github.com/bulkan/robotframework-requests/blob/master/tests/testcase.robot
...                 Doc da API do GitHub: https://developer.github.com/v3/
Library             RequestsLibrary
Library             Collections
Library             String
Resource            ./variables/my_user_and_passwords.robot

*** Variables ***
${GITHUB_HOST}      https://api.github.com
${ISSUES_URI}       /repos/mayribeirofernandes/myudemyrobotframeworkcourse/issues/

*** Test Cases ***
Exercicio 1: Postando com body template 
    # Conectar com autenticação básica na API do GitHub
    Conectar com autenticação por token na API do GitHub
    Postar um comentário "Comentário cadastrado via Robot Framework! Por Djalma" na issue de número "12" 

Exercicio 2: Consultar Comentários Existentes
     Conectar com autenticação por token na API do GitHub
    Listar Comentarios da "12" que foram sortidos por "created" e em ordem "asc"

*** Keywords ***

Conectar com autenticação por token na API do GitHub
    ${HEADERS}          Create Dictionary    Authorization=Bearer ${MY_GITHUB_TOKEN}
    Create Session      alias=mygithubAuth   url=${GITHUB_HOST}     headers=${HEADERS}     disable_warnings=True

Postar um comentário "${COMMENTARY}" na issue de número "${ISSUE_NUMBER}" 
    ${BODY}         Format String    ${CURDIR}/data/input/post_issue.json
    ...             user_git=${MY_GITHUB_USER}
    Log             Meu Body ficou:\n${BODY}
    ${RESPONSE}     POST On Session    alias=mygithubAuth    url=${ISSUES_URI}/${ISSUE_NUMBER}/comments   data=${BODY}
    Confere sucesso na requisição   ${RESPONSE}

Confere sucesso na requisição
    [Arguments]      ${RESPONSE}
    Should Be True   '${RESPONSE.status_code}'=='200' or '${RESPONSE.status_code}'=='201'
    ...  msg=Erro na requisição! Verifique: ${RESPONSE}

Listar Comentarios da "${ISSUE_NUMBER}" que foram sortidos por "${SORT}" e em ordem "${DIRECTION}"
    &{PARAMS}           Create Dictionary    sort=${SORT}      direction=${DIRECTION}
    ${MY_ISSUES}        GET On Session          alias=mygithubAuth        url=${ISSUES_URI}/${ISSUE_NUMBER}/comments     params=${PARAMS}
    Log                 Lista de Issues: ${MY_ISSUES.json()}
    Confere sucesso na requisição   ${MY_ISSUES}

