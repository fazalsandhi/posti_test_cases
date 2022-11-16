*** Settings ***
Library  SeleniumLibrary
Resource  Resources.robot
*** Variables ***



*** Test Cases ***

ZoomInZoomOutFullScreen
    #Open browser using bellow function
    OpenBrowserForServicePickup


    input text  xpath://input[@id='searchTerm']     02200
    click element   xpath://body/div[@id='___gatsby']/div[@id='gatsby-focus-wrapper']/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/section[2]/div[1]/div[2]/div[1]/div[1]/div[1]/button[2]
    Scroll To Element  xpath://h2[contains(text(),'Nearest service points')]
    sleep   5

    ${total_service_points} =    get element count     xpath://div[@id='nearbyPointsListElement']/div
    IF  ${total_service_points} > 0
        click element   xpath://body/div[@id='___gatsby']/div[@id='gatsby-focus-wrapper']/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/section[3]/div[1]/div[1]/div[1]/div[4]/button[1]
        sleep   5
        double click element   xpath://body/div[@id='___gatsby']/div[@id='gatsby-focus-wrapper']/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[11]/div[1]/div[1]/div[1]/button[1]
        sleep   3
        double click element   xpath://body/div[@id='___gatsby']/div[@id='gatsby-focus-wrapper']/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[11]/div[1]/div[1]/div[1]/button[2]
        sleep   3
        double click element   xpath://body/div[@id='___gatsby']/div[@id='gatsby-focus-wrapper']/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[8]/button[1]
    END
#    scroll element into view    xpath://h2[contains(text(),'Nearest service points')]
    sleep   5
    close browser

*** Keywords ***

