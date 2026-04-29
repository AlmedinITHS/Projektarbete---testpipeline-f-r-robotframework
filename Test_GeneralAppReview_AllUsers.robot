*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
AppReview for user Admin
    Open browser    http://localhost:5173/login
    Input Text    //*[@id="root"]/div/form/input[1]    Admin1
    Input Text    //*[@id="root"]/div/form/input[2]    123
    Click Button    //*[@id="root"]/div/form/button

    #Testar alla knappar i menyn till vänster
    Wait Until Element Is Visible       //*[@id="root"]/div/aside/nav/button[1]
    Click Button    //*[@id="root"]/div/aside/nav/button[1]
    Wait Until Element Is Visible       //*[@id="root"]/div/aside/nav/button[2]
    Click Button    //*[@id="root"]/div/aside/nav/button[2]
    Wait Until Element Is Visible       //*[@id="root"]/div/aside/nav/button[3]
    Click Button    //*[@id="root"]/div/aside/nav/button[3]
    Wait Until Element Is Visible       //*[@id="root"]/div/aside/nav/button[4]
    Click Button    //*[@id="root"]/div/aside/nav/button[4]
    Wait Until Element Is Visible       //*[@id="root"]/div/aside/nav/button[5]
    Click Button    //*[@id="root"]/div/aside/nav/button[5]
    Wait Until Element Is Visible       //*[@id="root"]/div/aside/nav/button[6]
    Click Button    //*[@id="root"]/div/aside/nav/button[6]
    Wait Until Element Is Visible       //*[@id="root"]/div/aside/nav/button[7]
    Click Button    //*[@id="root"]/div/aside/nav/button[7]


AppReview for user Employee
    Open browser    http://localhost:5173/login
    Input Text    //*[@id="root"]/div/form/input[1]    Employee1
    Input Text    //*[@id="root"]/div/form/input[2]    123
    Click Button    //*[@id="root"]/div/form/button

    #Testar alla knappar i menyn till vänster
    Wait Until Element Is Visible       //*[@id="root"]/div/aside/nav/button[1]
    Click Button    //*[@id="root"]/div/aside/nav/button[1]
    Wait Until Element Is Visible       //*[@id="root"]/div/aside/nav/button[2]
    Click Button    //*[@id="root"]/div/aside/nav/button[2]
    Wait Until Element Is Visible       //*[@id="root"]/div/aside/nav/button[3]
    Click Button    //*[@id="root"]/div/aside/nav/button[3]
    Wait Until Element Is Visible       //*[@id="root"]/div/aside/nav/button[4]
    Click Button    //*[@id="root"]/div/aside/nav/button[4]
    Wait Until Element Is Visible       //*[@id="root"]/div/aside/nav/button[5]
    Click Button    //*[@id="root"]/div/aside/nav/button[5]
    Wait Until Element Is Visible       //*[@id="root"]/div/aside/nav/button[6]
    Click Button    //*[@id="root"]/div/aside/nav/button[6]
    Wait Until Element Is Visible       //*[@id="root"]/div/aside/nav/button[7]
    Click Button    //*[@id="root"]/div/aside/nav/button[7]

AppReview for user Partner
    Open browser    http://localhost:5173/login
    Input Text    //*[@id="root"]/div/form/input[1]    Partner1
    Input Text    //*[@id="root"]/div/form/input[2]    123
    Click Button    //*[@id="root"]/div/form/button

    Wait Until Element Is Visible       //*[@id="root"]/div/aside/nav/button[1]
    Click Button    //*[@id="root"]/div/aside/nav/button[1]