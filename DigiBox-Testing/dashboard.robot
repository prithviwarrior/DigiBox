*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem    

*** Test Cases ***
TC_1
    Append To Environment Variable    PATH    ${OUTPUT_DIR}//driver
    Open Browser    url=C:/Users/koppu/eclipse-workspace/DigiBox-Develop/DigiBox-Develop/Mockup/index.html   browser=chrome
    Set Selenium Implicit Wait    30s
    Maximize Browser Window
    Click Element    //*[@class="search-int form-control"]    
    Input Text    //*[@class="search-int form-control"]     Movie    
    Sleep    5s    
    Scroll Element Into View    //*[text()="Other"]
    Page Should Contain    DigiBox    
    Page Should Contain Element    //*[text()="Movies"]    
    Page Should Contain Element    //*[text()="New & Expiring Content"]    
    Mouse Over    (//*[text()="Thriler"])[1]
    Mouse Over    (//*[text()="Romance"])[1]
    Scroll Element Into View    (//*[text()="Totals"])[1]
    Mouse Over    (//*[@class=" c3-event-rect c3-event-rect-3"])[2]
    Scroll Element Into View    (//*[text()="Media"])[1]
    Click Element    (//*[text()="Media"])[1]    