*** Settings ***
Library  Selenium2Library

*** Variables ***
${URl}   https://fitto-test.fitto-at.com/
${Browser}      Firefox
#Headless
*** Test Cases ***
Admin Portal
    Open Browser   ${url}   ${Browser}
    sleep  2s
    Maximize Browser Window
    sleep  3s
    Input Text   xpath:/html/body/div/div/div/div[2]/div/div/div[2]/form/div/div[1]/input[1]   mohankumar.n@ambertag.com
    sleep  1s
    Input Text  xpath:/html/body/div/div/div/div[2]/div/div/div[2]/form/div/div[1]/input[2]  testtest
    sleep  3s
    Click Element  xpath:/html/body/div/div/div/div[2]/div/div/div[2]/form/div/div[3]/button[1]
    sleep  5s
    Click Element  xpath:/html/body/div/div/div[1]/div[2]/div[2]/div[1]/button
    SLEEP  3s
    Select From List By Index  xpath://*[@id="mainFrame"]/div/div[1]/div[1]/select[1]   1
    sleep  3s
    Select From List By Index  xpath://*[@id="mainFrame"]/div/div[1]/div[1]/select[2]   1
    sleep  3s
    Click Element  xpath://option[contains(text(),'test_clinic')]

    sleep  10s
    Page Should Contain Element  xpath:/html/body/div/div/div/div[2]/div[3]/div[1]/div/div/div[4]/div/div/div/div[2]/div/div/button
    sleep  2s
    Double Click Element  xpath:/html/body/div/div/div/div[2]/div[3]/div[1]/div/div/div[4]/div/div/div/div[2]/div/div/button

    sleep  10s
    Click Element   xpath:/html/body/div[3]/div/div/div/div/div[2]/section/div[2]/div/div/div/div[2]/div[2]/div/table/tbody/tr/td/div/div/div[5]/div[2]/table/tbody/tr[1]/td[3]/a/div/span[2]
    sleep  4s
    Input Text   id:AppoReason  testing
    sleep  2s
    Click Element  Xpath:/html/body/div[3]/div/div/div/div[3]/form/div[6]/div[1]/div/button[1]
    sleep  2s
    Handle Alert
    Sleep  4s
*** Keywords ***
Provided precondition
    Setup system under test