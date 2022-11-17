*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url_service_point}    https://www.posti.fi/en/service-points-on-map
${url_parcel_tracking}    https://www.posti.fi/en/private/parcels-and-tracking
${browser}  chrome

*** Keywords ***
OpenBrowserForServicePickup
    open browser    ${url_service_point}   ${browser}
    maximize browser window
    set selenium implicit wait  5
    click element   id:onetrust-accept-btn-handler

OpenBrowserForParcelTracking
    open browser    ${url_parcel_tracking}   ${browser}
    maximize browser window
    set selenium implicit wait  6
    click element   id:onetrust-accept-btn-handler

Scroll To Element
    [Arguments]  ${locator}
    ${x}=        Get Horizontal Position  ${locator}
    ${y}=        Get Vertical Position    ${locator}
    Execute Javascript  window.scrollTo(${x}, ${y})

