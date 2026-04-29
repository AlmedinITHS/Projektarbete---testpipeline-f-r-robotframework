*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

Test Employee Login and open handbooks
    Open browser    http://localhost:5173/login
    Input Text    //*[@id="root"]/div/form/input[1]    Employee1
    Input Text    //*[@id="root"]/div/form/input[2]    123
    Click Button    //*[@id="root"]/div/form/button
    Wait Until Element Is Visible       //*[@id="root"]/div/aside/nav/button[4]
    Click Button    //*[@id="root"]/div/aside/nav/button[4]
    Click Element    //*[@id="root"]/div/main/div/ul/li[1]/h3
    Click Element    //*[@id="root"]/div/main/div/ul/li[2]/h3
    Click Element    //*[@id="root"]/div/main/div/ul/li[3]/h3
    
Test Admin Login and open handbooks
    Open browser    http://localhost:5173/login
    Input Text    //*[@id="root"]/div/form/input[1]    Admin1
    Input Text    //*[@id="root"]/div/form/input[2]    123
    Click Button    //*[@id="root"]/div/form/button
    Wait Until Element Is Visible    //*[@id="root"]/div/aside/nav/button[4]
    Click Button    //*[@id="root"]/div/aside/nav/button[4]
    Click Element    //*[@id="root"]/div/main/div/ul/li[1]/h3
    Click Element    //*[@id="root"]/div/main/div/ul/li[2]/h3
    Click Element    //*[@id="root"]/div/main/div/ul/li[3]/h3


















