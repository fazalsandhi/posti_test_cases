*** Settings ***
Library  SeleniumLibrary
Resource  Resources.robot
*** Variables ***



*** Test Cases ***

FindNearestPickupPointByAddrss
    #Open browser using bellow function
    OpenBrowserForServicePickup


    #we have to unselect Postal Outlet and Parcel Locaker first becouse it is pre selected and we want only pickup points
    #uncheck Postal Outlet Checkbox
    unselect checkbox   xpath://body/div[@id='___gatsby']/div[@id='gatsby-focus-wrapper']/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/section[1]/fieldset[1]/ul[1]/li[1]/label[1]/div[1]/div[1]/input[1]
    #uncheck Parcel Locker
    unselect checkbox   xpath://body/div[@id='___gatsby']/div[@id='gatsby-focus-wrapper']/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/section[1]/fieldset[1]/ul[1]/li[3]/label[1]/div[1]/div[1]/input[1]
    input text  xpath://input[@id='searchTerm']     02200
    click element   xpath://body/div[@id='___gatsby']/div[@id='gatsby-focus-wrapper']/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/section[2]/div[1]/div[2]/div[1]/div[1]/div[1]/button[2]
    Scroll To Element  xpath://h2[contains(text(),'Nearest service points')]
#    scroll element into view    xpath://h2[contains(text(),'Nearest service points')]
    sleep   5
    close browser

*** Keywords ***

