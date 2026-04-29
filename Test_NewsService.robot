*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

Test of NewsService as admin
    Open browser    http://localhost:5173/login
    Input Text    //*[@id="root"]/div/form/input[1]    Admin1
    Input Text    //*[@id="root"]/div/form/input[2]    123
    Click Button    //*[@id="root"]/div/form/button
    Wait Until Element Is Visible    //*[@id="root"]/div/aside/nav/button[2]
    Click Button    //*[@id="root"]/div/aside/nav/button[2]

    #Följande test är av alla fem nyhetsartiklar i fliken "Nyheter"
    Wait Until Element Is Visible    //*[@id="root"]/div/main/main/div/section[2]/article[1]/div[1]
    Click Element    //*[@id="root"]/div/main/main/div/section[2]/article[1]/div[1]

    Wait Until Element Is Visible    //*[@id="root"]/div/main/main/div/div/div/button/img
    Click Image    //*[@id="root"]/div/main/main/div/div/div/button/img

    Wait Until Element Is Visible    //*[@id="root"]/div/main/main/div/section[2]/article[2]/div[1]
    Click Element    //*[@id="root"]/div/main/main/div/section[2]/article[2]/div[1]

    Wait Until Element Is Visible    //*[@id="root"]/div/main/main/div/div/div/button/img
    Click Image    //*[@id="root"]/div/main/main/div/div/div/button/img

     Wait Until Element Is Visible    //*[@id="root"]/div/main/main/div/section[2]/article[3]/div[1]
    Click Element    //*[@id="root"]/div/main/main/div/section[2]/article[3]/div[1]

    Wait Until Element Is Visible    //*[@id="root"]/div/main/main/div/div/div/button/img
    Click Image    //*[@id="root"]/div/main/main/div/div/div/button/img

     Wait Until Element Is Visible    //*[@id="root"]/div/main/main/div/section[2]/article[4]/div[1]
    Click Element    //*[@id="root"]/div/main/main/div/section[2]/article[4]/div[1]

    Wait Until Element Is Visible    //*[@id="root"]/div/main/main/div/div/div/button/img
    Click Image    //*[@id="root"]/div/main/main/div/div/div/button/img

     Wait Until Element Is Visible    //*[@id="root"]/div/main/main/div/section[2]/article[5]/div[1]
    Click Element    //*[@id="root"]/div/main/main/div/section[2]/article[5]/div[1]

    Wait Until Element Is Visible    //*[@id="root"]/div/main/main/div/div/div/button/img
    Click Image    //*[@id="root"]/div/main/main/div/div/div/button/img

# Följande test testar sökfunktionen i "Nyheter", test av att hitta nyhetsartikeln "Intern utbildningsvecka"

    Click Element    //*[@id="root"]/div/main/main/div/section[1]/div[1]  
    Input Text    //*[@id="root"]/div/main/main/div/section[1]/div[1]/input    Intern

# Radering av texten "Intern" i sökfältet
    Clear Element Text    //*[@id="root"]/div/main/main/div/section[1]/div[1]/input

# Test av Dropdown-menyerna

    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[1]    Idag
    Sleep    1s
    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[1]    Senaste veckan
    Sleep    1s
    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[1]    Senaste månaden
    Sleep    1s
    
    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[2]    Management
    Sleep    1s
    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[2]    HR
    Sleep    1s
    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[2]    IT
    Sleep    1s
    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[2]    Workshop
    Sleep    1s
    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[2]    Marketing
    Sleep    1s
    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[3]    Nyaste
    Sleep    1s
    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[3]    Äldsta
    Sleep    1s
    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[3]    Olästa först
    Sleep    1s



Test of NewsService as Employee
    Open browser    http://localhost:5173/login
    Input Text    //*[@id="root"]/div/form/input[1]    Employee1
    Input Text    //*[@id="root"]/div/form/input[2]    123
    Click Button    //*[@id="root"]/div/form/button
    Wait Until Element Is Visible    //*[@id="root"]/div/aside/nav/button[2]
    Click Button    //*[@id="root"]/div/aside/nav/button[2]

    #Följande test är av alla fem nyhetsartiklar i fliken "Nyheter"
    Wait Until Element Is Visible    //*[@id="root"]/div/main/main/div/section[2]/article[1]/div[1]
    Click Element    //*[@id="root"]/div/main/main/div/section[2]/article[1]/div[1]

    Wait Until Element Is Visible    //*[@id="root"]/div/main/main/div/div/div/button/img
    Click Image    //*[@id="root"]/div/main/main/div/div/div/button/img

    Wait Until Element Is Visible    //*[@id="root"]/div/main/main/div/section[2]/article[2]/div[1]
    Click Element    //*[@id="root"]/div/main/main/div/section[2]/article[2]/div[1]

    Wait Until Element Is Visible    //*[@id="root"]/div/main/main/div/div/div/button/img
    Click Image    //*[@id="root"]/div/main/main/div/div/div/button/img

     Wait Until Element Is Visible    //*[@id="root"]/div/main/main/div/section[2]/article[3]/div[1]
    Click Element    //*[@id="root"]/div/main/main/div/section[2]/article[3]/div[1]

    Wait Until Element Is Visible    //*[@id="root"]/div/main/main/div/div/div/button/img
    Click Image    //*[@id="root"]/div/main/main/div/div/div/button/img

     Wait Until Element Is Visible    //*[@id="root"]/div/main/main/div/section[2]/article[4]/div[1]
    Click Element    //*[@id="root"]/div/main/main/div/section[2]/article[4]/div[1]

    Wait Until Element Is Visible    //*[@id="root"]/div/main/main/div/div/div/button/img
    Click Image    //*[@id="root"]/div/main/main/div/div/div/button/img

     Wait Until Element Is Visible    //*[@id="root"]/div/main/main/div/section[2]/article[5]/div[1]
    Click Element    //*[@id="root"]/div/main/main/div/section[2]/article[5]/div[1]

    Wait Until Element Is Visible    //*[@id="root"]/div/main/main/div/div/div/button/img
    Click Image    //*[@id="root"]/div/main/main/div/div/div/button/img

# Följande test testar sökfunktionen i "Nyheter", test av att hitta nyhetsartikeln "Intern utbildningsvecka"

    Click Element    //*[@id="root"]/div/main/main/div/section[1]/div[1]
    Input Text    //*[@id="root"]/div/main/main/div/section[1]/div[1]/input    Intern

# Radering av texten "Intern" i sökfältet
    Clear Element Text    //*[@id="root"]/div/main/main/div/section[1]/div[1]/input

# Test av Dropdown-menyerna

    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[1]    Idag
    Sleep    1s
    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[1]    Senaste veckan
    Sleep    1s
    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[1]    Senaste månaden
    Sleep    1s

    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[2]    Management
    Sleep    1s
    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[2]    HR
    Sleep    1s
    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[2]    IT
    Sleep    1s
    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[2]    Workshop
    Sleep    1s
    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[2]    Marketing
    Sleep    1s
    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[3]    Nyaste
    Sleep    1s
    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[3]    Äldsta
    Sleep    1s
    Select From List By Label    //*[@id="root"]/div/main/main/div/section[1]/div[2]/select[3]    Olästa först
    Sleep    1s








