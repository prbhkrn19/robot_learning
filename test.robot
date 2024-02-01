*** Settings ***
Documentation       using the space separated format

Library             OperatingSystem


*** Variables ***
${message}      Hello, World!


*** Test Cases ***
My Test
    [Documentation]    first test as Example
    Log    ${message}
    My Keyword    ${CURDIR}

Another Test
    Should Be Equal    ${message}    Hello, World!


*** Keywords ***
My Keyword
    [Arguments]    ${path}
    Directory Should Exist    ${path}
