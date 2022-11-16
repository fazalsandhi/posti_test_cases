*** Settings ***
Library  SeleniumLibrary
Resource  Resources.robot
*** Variables ***



*** Test Cases ***

AllowSercieLocationAndClickSearch
    #Open browser using bellow function
    OpenBrowserForServicePickup


    click element   xpath://body/div[@id='___gatsby']/div[@id='gatsby-focus-wrapper']/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/section[2]/div[1]/div[2]/div[1]/div[1]/div[1]/button[1]
    click element   xpath://body/div[@id='___gatsby']/div[@id='gatsby-focus-wrapper']/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/section[2]/div[1]/div[2]/div[1]/div[1]/div[1]/button[2]
    Scroll To Element  xpath://h2[contains(text(),'Nearest service points')]
#    scroll element into view    xpath://h2[contains(text(),'Nearest service points')]
    sleep   5
    close browser

*** Keywords ***

