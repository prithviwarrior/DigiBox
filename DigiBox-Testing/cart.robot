*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem    



*** Test Cases ***
Tc1
    Append To Environment Variable    PATH     ${OUTPUT_DIR}//driver
    Open Browser    url=C:/Users/koppu/eclipse-workspace/DigiBox-Develop/DigiBox-Develop/Mockup/cart.html   browser=chrome
    Set Selenium Implicit Wait    30s
    Maximize Browser Window
    Click Element    (//*[@type="checkbox"])[1]   
    Sleep    5s     
    Click Element    (//*[@type="checkbox"])[2]    
    Click Element    (//*[@type="checkbox"])[7]      
    Sleep    5s    
    Click Element    (//*[@type="checkbox"])[11]    
    Sleep    5s    
    Click Element    (//*[@type="checkbox"])[12]
    Sleep    5s    
    Click Element    (//*[@type="checkbox"])[15]  
    Sleep    5s    
    Click Element    (//*[@type="checkbox"])[17]
    Sleep    5s    
    Click Element    (//*[@type="checkbox"])[18]
    Sleep    5s    
    Click Element    (//*[@type="checkbox"])[20]
    Sleep    5s    
    Click Element    (//*[@type="checkbox"])[23]   
    Click Element    (//*[@type="checkbox"])[25]
    Sleep    5s    
    Click Element    (//*[@type="checkbox"])[27]     
     
    Input Text    //*[@class="search-int form-control"]    movie
    Page Should Contain Element    //*[@class="fa fa-floppy-o"]
    Page Should Contain Image   //*[@src="https://m.media-amazon.com/images/M/MV5BYjQ5NjM0Y2YtNjZkNC00ZDhkLWJjMWItN2QyNzFkMDE3ZjAxXkEyXkFqcGdeQXVyODIxMzk5NjA@._V1_.jpg"]         
    ${text}  Get Text    //*[@src="https://m.media-amazon.com/images/M/MV5BYjQ5NjM0Y2YtNjZkNC00ZDhkLWJjMWItN2QyNzFkMDE3ZjAxXkEyXkFqcGdeQXVyODIxMzk5NjA@._V1_.jpg"]
    Log To Console    ${text}    
    Sleep    5s    
    Scroll Element Into View    (//*[contains(text()," Add to Cart")])[1]
    Scroll Element Into View    (//*[contains(text(),"Home")])[3]    
    Click Element    (//*[contains(text(),"Home")])[1]    
    