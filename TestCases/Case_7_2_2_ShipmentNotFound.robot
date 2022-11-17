*** Settings ***
Library  SeleniumLibrary
Resource  Resources.robot
*** Variables ***
${tracking_number}  ABCXXXX


*** Test Cases ***

ShipmentNotFound
    #Open browser using bellow function
    OpenBrowserForParcelTracking

    Scroll To Element    xpath://body/div[@id='___gatsby']/div[@id='gatsby-focus-wrapper']/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/section[1]
    input text  name:JJFI   ${tracking_number}
    sleep   5
    click element   xpath://*[@id="main"]/div/div/section[1]/div[1]/div/div/button
    Scroll To Element   xpath://*[@id="main"]
    sleep   5
    Element Text Should Be  xpath://*[@id="main"]/div/div/div/div/div[1]/b    No items could be found based on the tracking code.

    sleep   5
    close browser

*** Keywords ***

