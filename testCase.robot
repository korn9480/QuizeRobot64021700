# test case 13
*** Settings ***
Documentation    test case 13 Verify Product quantity in Cart
Library    SeleniumLibrary
Suite Setup    Open Browser    https://automationexercise.com/
*** Variables ***
${NUMBER_PRODUCT}    4
${NAME_PRODUCT_SELECT}    Blue Top

*** Keywords ***
Verify that home page
    Page Should Contain    Automation

CLICK VIEW PRODUCT
    Click Element    //*[@href='/product_details/1']

Verify product detail
    Page Should Contain    ${NAME_PRODUCT_SELECT}

INPUT NUMBER PRODUCT
    [Arguments]    ${NUMBER_PRODUCT}
    # Input Text    //*[(@name="quantity" and @id="quantity")]    ${NUMBER_PRODUCT}
    Input Text    //*[@id="quantity"]    ${NUMBER_PRODUCT}

CLOSE POPUP
    Click Element    /html/body/div/div/div[1]/div[1]/div/svg

*** Test Cases ***
Verify Product quantity in Cart
    [Documentation]    testcase Verify Product quantity in Cart
    Verify that home page
    CLICK VIEW PRODUCT
    Verify product detail
    CLOSE POPUP
    INPUT NUMBER PRODUCT    ${NAME_PRODUCT_SELECT}

