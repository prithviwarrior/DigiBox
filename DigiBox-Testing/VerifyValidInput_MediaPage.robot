*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    screenshot_root_directory=${OUTPUT_DIR}//ScreenShots

*** Test Cases ***

TC1_VerifyDifferentWebElements
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    
    Open Browser    url=H:/LnT/DigiBox Shadow Project/DigiBox-Develop/DigiBox-Develop/Mockup/studio.html    browser=chrome
    Maximize Browser Window
    
    Comment    TO wait for page to load and the elements to be vosible on the webpage
    Set Selenium Implicit Wait    30s
    
    Comment    Sleep time is added  here only to view the output one by one else the entire execution will happen in miliseconds
    
    Click Element    //a[text()="Media"]
    Sleep    3s    
    Click Element    //a[text()="Movies"]
    Sleep    3s
    Click Element    //input[@class="pull-left radio-checked"]
    Sleep    3s
    # Uncheck the checkbox of the poster
    Scroll Element Into View    //input[@class="pull-left radio-checked margin-none"]
    Sleep    2s    
    Unselect Checkbox    //input[@class="pull-left radio-checked margin-none"]
    Sleep    2s
    Unselect Checkbox    (//input[@class="pull-left radio-checked margin-none"])[3]
    Sleep    2s
    # Enter any movie name in the search box
    Input Text    //input[@placeholder="Search..."]    The Revenant  
    Sleep    2s
    Click Element    //button[text()=" Add to Cart"]
    Sleep    2s
    # Select filter options by clicking filter icon
    Click Element    //button[@id="mobileToogle"]
    Sleep    2s
    Click Element    //span[text()="User"]    
    Sleep    2s
    Click Element    (//a[@href="#"])[3]
    Sleep    2s
    Click Element    (//a[@href="#"])[4]
    Sleep    2s
    Click Element    (//a[@href="#"])[5]
    Sleep    2s
    Click Element    //input[@type="checkbox"][1]
    Sleep    2s
    #Click Element    //input[@type="checkbox"][3]
    Scroll Element Into View    //button[@class="floatRight mg-r-15 btn btn-custon-rounded-four btn-info mt-b-30"]
    Sleep    2s
    Click Element    //button[@class="floatRight mg-r-15 btn btn-custon-rounded-four btn-info mt-b-30"]
    Sleep    2s
    # Select Checkbox    (//input[@type="checkbox"])[15]
    # Sleep    2s    
    Click Element    //i[@class="fa fa-close"]  
    Sleep    2s
    #Click Element    //div[@class="student-img"]
    
    Click Element    //a[text()="Media"]
    
    Click Element    //span[@class="cart-count"]    
    
    Click Element    //a[text()="Media"]
    Sleep    2s
    Click Element    //select[@name="sort"]    
    
    Sleep    5s    
    
    Click Element    //option[text()="Rating"]    
    
    Sleep    5s    

    
    Close Browser      
    
Verify CSS Style Of Filter Options
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    
    Open Browser    url=H:/LnT/DigiBox Shadow Project/DigiBox-Develop/DigiBox-Develop/Mockup/studio.html    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s 
    Click Element    //button[@id="mobileToogle"]
    Sleep    2s
    Mouse Over    //a
    Sleep    2s    
    # Verify colour change on mouse hover
    ${css_style}=    Get CSS Attribute Value    locator=(//a)[2]    attribute=color
    Should Contain    ${css_style}    rgb(141, 148, 152)
    Mouse Over    (//a)[2]
    Sleep    2s
    ${css_style}=    Get CSS Attribute Value    locator=(//a)[2]    attribute=color
    Should Contain    ${css_style}    rgb(85, 85, 85)
    Close Browser      


*** Keywords ***
Get CSS Attribute Value
    [Arguments]    ${locator}    ${attribute}
    # Get element using Xpath in JavaScript.
    # Note there are other options like getElementById/Class/Tag
    ${element}=    Set Variable    document.evaluate("${locator}", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue
    # Get css attribute value using getComputedStyle()
    ${attribute_value}=    Execute Javascript    return window.getComputedStyle(${element},null).getPropertyValue('${attribute}');
    Log   ${attribute_value}
    [Return]    ${attribute_value}
    
    