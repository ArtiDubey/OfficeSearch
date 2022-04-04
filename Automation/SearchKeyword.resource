***Setting***
Documentation    Variable and Keywords for Search test cases

*** Variables ***
${URL}    https://www.officemate.co.th/en/search/notepad
${BROWSER}    chrome
${SEARCHTEXT}    jungle
${SEARCHBUTTON}    xpath://*[@id="btn-searchResultPage"]
${SEARCHTEXTBOX}    xpath://*[@id="app"]/div/div[1]/div/div[1]/div[1]/div[1]/input

***Keyword***
Step1: Go to the home page
    Open Browser  ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    2
    
Step2: Type Search Item in Search Bar
    Clear Element Text  ${SEARCHTEXTBOX}
    Click Element    ${SEARCHBUTTON}
    Input Text    ${SEARCHTEXTBOX}    ${SEARCHTEXT}
    Sleep    2

Step3: Click on Search button
      Click Element    ${SEARCHBUTTON}    
      Sleep    2
      
Step4 : Verify the search result
    Page Should Contain    product results found for "${SEARCHTEXT}"