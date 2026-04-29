*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test of OrderCentral for user Admin
    Open browser    http://localhost:5173/login
    Input Text    //*[@id="root"]/div/form/input[1]    Admin1
    Input Text    //*[@id="root"]/div/form/input[2]    123
    Click Button    //*[@id="root"]/div/form/button

    #Testar att bläddra i ordercentral-flikarna genom att klicka på flikarna
    Wait Until Element Is Visible       //*[@id="root"]/div/aside/nav/button[7]
    Sleep    1s
    Click Button    //*[@id="root"]/div/aside/nav/button[7]
    Sleep    1s
    Click Element    //*[@id="root"]/div/main/div/nav/div[2]
    Sleep    1s
    Click Element    //*[@id="root"]/div/main/div/nav/div[3]
    Sleep    1s
    Click Element    //*[@id="root"]/div/main/div/nav/div[4]
    Sleep    1s
    Click Element    //*[@id="root"]/div/main/div/nav/div[5]
    Sleep    1s

    #Testar att bocka för "ordernummer", "fakturanummer" och "ramnummer"
    Click Element    //*[@id="root"]/div/main/div/nav/div[1]
    Wait Until Element Is Visible    //*[@id="root"]/div/main/div/main/div/div[1]/div[1]/div[3]/label[2]/input

    Wait Until Element Is Visible    //input[@type="radio"]
    Select Radio Button    searchType    fakturanummer
    Sleep    1s
    Select Radio Button    searchType    ramnummer
    Sleep    1s

Test of OrderCentral for user Employee
    Open browser    http://localhost:5173/login
    Input Text    //*[@id="root"]/div/form/input[1]    Employee1
    Input Text    //*[@id="root"]/div/form/input[2]    123
    Click Button    //*[@id="root"]/div/form/button

    #Testar att bläddra i ordercentral-flikarna genom att klicka på flikarna
    Wait Until Element Is Visible       //*[@id="root"]/div/aside/nav/button[7]
    Sleep    1s
    Click Button    //*[@id="root"]/div/aside/nav/button[7]
    Sleep    1s
    Click Element    //*[@id="root"]/div/main/div/nav/div[2]
    Sleep    1s
    Click Element    //*[@id="root"]/div/main/div/nav/div[3]
    Sleep    1s
    Click Element    //*[@id="root"]/div/main/div/nav/div[4]
    Sleep    1s
    Click Element    //*[@id="root"]/div/main/div/nav/div[5]
    Sleep    1s

    #Testar att bocka för "ordernummer", "fakturanummer" och "ramnummer"
    Click Element    //*[@id="root"]/div/main/div/nav/div[1]
    Wait Until Element Is Visible    //*[@id="root"]/div/main/div/main/div/div[1]/div[1]/div[3]/label[2]/input

    Wait Until Element Is Visible    //input[@type="radio"]
    Select Radio Button    searchType    fakturanummer
    Sleep    1s
    Select Radio Button    searchType    ramnummer
    Sleep    1s

Test of OrderCentral for user Partner
    Open browser    http://localhost:5173/login
    Input Text    //*[@id="root"]/div/form/input[1]    Partner1
    Input Text    //*[@id="root"]/div/form/input[2]    123
    Click Button    //*[@id="root"]/div/form/button

    #Testar att bläddra i ordercentral-flikarna genom att klicka på flikarna






