*** Settings ***
Library  SeleniumLibrary
Resource  Resources.robot
*** Variables ***
${tracking_number}  CF753732593DE


*** Test Cases ***

ParcelTracking
    #Open browser using bellow function
    OpenBrowserForParcelTracking

    Scroll To Element    xpath://body/div[@id='___gatsby']/div[@id='gatsby-focus-wrapper']/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/section[1]
    input text  name:JJFI   ${tracking_number}
    sleep   5
    click element   xpath://*[@id="main"]/div/div/section[1]/div[1]/div/div/button
    Scroll To Element   xpath://*[@id="main"]
    Element Text Should Be  xpath://*[@id="tracking-item-header"]/div/div/div[2]/div    ${tracking_number}

    sleep   5
    close browser

*** Keywords ***

