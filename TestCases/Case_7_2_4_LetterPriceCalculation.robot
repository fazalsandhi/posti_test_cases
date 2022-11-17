*** Settings ***
Library  SeleniumLibrary
Resource  Resources.robot
*** Variables ***
${tracking_number}  ABCXXXX


*** Test Cases ***

LetterPriceCalculation
    #Open browser using bellow function
    OpenBrowserForParcelTracking

    sleep   3
    click Element   xpath://*[@id="posti-fi-navigation"]/div/ul/li[2]/a
    sleep   3
    click Element   xpath://body[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[2]/aside[1]/nav[1]/ul[1]/li[1]/a[1]
    sleep   3
    click Element   xpath://*[@id="main"]/header/div[2]/div/div[1]/a
    sleep   3
    Scroll To Element   xpath://*[@id="main"]/div[2]/div/div[2]/div/form/fieldset/legend
    sleep   2
    select checkbox     xpath://*[@id="main"]/div[2]/div/div[2]/div/form/fieldset/div[4]/div/label/div/input
    sleep   1
    click Element        xpath://*[@id="option-5"]/label/div/input
    click Element   xpath://*[@id="main"]/div[2]/div/div[2]/div/form/button

    sleep   5
    close browser

*** Keywords ***

