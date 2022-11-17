*** Settings ***
Library  SeleniumLibrary
Resource  Resources.robot
*** Variables ***
${tracking_number}  ABCXXXX


*** Test Cases ***

SendLatterAndMails
    #Open browser using bellow function
    OpenBrowserForParcelTracking

    sleep   3
    click Element   xpath://*[@id="posti-fi-navigation"]/div/ul/li[2]/a
    sleep   3
    click Element   xpath://body[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[2]/aside[1]/nav[1]/ul[1]/li[1]/a[1]
    sleep   5
    close browser

*** Keywords ***

