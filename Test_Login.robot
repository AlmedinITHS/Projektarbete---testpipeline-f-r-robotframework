*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

Login and Logout Admin pass
    Open browser    http://localhost:5173/login
    Input Text    //*[@id="root"]/div/form/input[1]    Admin1
    Input Text    //*[@id="root"]/div/form/input[2]    123
    Click Button    //*[@id="root"]/div/form/button

    Wait Until Element Is Visible    //*[@id="root"]/div/main/header/div[2]/button[2]    
    # Knapp för att logga ut:
    Click Button   //*[@id="root"]/div/main/header/div[2]/button[2]



Login Admin fail
    Open browser    http://localhost:5173/login 
    Input Text    //*[@id="root"]/div/form/input[1]    Admin1
    Input Text    //*[@id="root"]/div/form/input[2]    23245
    Click Button    //*[@id="root"]/div/form/button


Login and Logout employee pass
    Open Browser    http://localhost:5173/login   
    Input Text    //*[@id="root"]/div/form/input[1]    Employee1
    Input Text    //*[@id="root"]/div/form/input[2]    123
    Click Button    //*[@id="root"]/div/form/button
    Sleep    1s
    Wait Until Element Is Visible    //*[@id="root"]/div/main/header/div[2]/button[2]
    # Knapp för att logga ut:
    Click Button   //*[@id="root"]/div/main/header/div[2]/button[2]

Login employee fail
    Open Browser    http://localhost:5173/login
    Input Text    //*[@id="root"]/div/form/input[1]    Employee1
    Input Text    //*[@id="root"]/div/form/input[2]    123567
    Click Button    //*[@id="root"]/div/form/button

Login and Logout partner pass
    Open Browser    http://localhost:5173/login
    Input Text    //*[@id="root"]/div/form/input[1]    Partner1
    Input Text    //*[@id="root"]/div/form/input[2]    123
    Click Button    //*[@id="root"]/div/form/button
    Sleep    1s
    Wait Until Element Is Visible    //*[@id="root"]/div/main/header/div[2]/button[2]
    # Knapp för att logga ut:
    Click Button   //*[@id="root"]/div/main/header/div[2]/button[2]

Login partner fail
    Open Browser    http://localhost:5173/login
    Input Text    //*[@id="root"]/div/form/input[1]    Partner1
    Input Text    //*[@id="root"]/div/form/input[2]    Björnkram<-´´!#&/[
    Click Button    //*[@id="root"]/div/form/button

Login with empty fields should fail
    Open Browser    http://localhost:5173/login
    Element Should Be Disabled   //*[@id="root"]/div/form/button
