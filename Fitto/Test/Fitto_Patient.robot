*** Settings ***
Library  Selenium2Library

*** Variables ***
#${URl}   https://fitto-test.fitto-at.com/
${URl}   https://23.100.25.47:8443/fitto-website
${Browser}   Chrome

*** Test Cases ***
Admin Portal
    Open Browser   ${url}   ${Browser}
    sleep  2s
    Input Text   xpath:/html/body/div/div/div/div[2]/div/div/div[2]/form/div/div[1]/input[1]   mohankumar.n@ambertag.com
    sleep  1s
    Input Text  xpath:/html/body/div/div/div/div[2]/div/div/div[2]/form/div/div[1]/input[2]  testtest
    sleep  1s
    Click Element  xpath:/html/body/div/div/div/div[2]/div/div/div[2]/form/div/div[3]/button[1]

    sleep  5s

#    Select Frame  js:document.querySelector("#mainFrame > div > div:nth-child(1) > div.searchFilterBar > select:nth-child(1)")
#    sleep  2s
    Double Click Element  xpath:/html/body/div/div/div[1]/div[2]/div[2]/div[1]/button
    SLEEP  3s

#    Click Element  xpath://option[contains(text(),'cardiology')]
    sleep  3s
    Click Element  xpath://option[contains(text(),'Harish Kumar')]
    sleep  3s
    Click Element  xpath://option[contains(text(),'apollo')]
    sleep  4s
    Click Button  xpath://*[@id="openPopup"]
    sleep  5s
    Click Element  xpath:/html/body/div[3]/div/div/div/div/div[2]/section/div[2]/div/div/div/div[2]/div[2]/div/table/tbody/tr/td/div/div/div[1]/div[2]/table/tbody/tr[1]/td[7]/a/div/span[1]
    sleep  4s
    Input Text   id:AppoReason  testing
    sleep  2s
    Click Element  Xpath:/html/body/div[3]/div/div/div/div[3]/form/div[6]/div[1]/div/button[1]
    sleep  2s
    Handle Alert
    Sleep  4s
Edit
    Click Element  xpath:/html/body/div/div/div[1]/div[2]/div[3]/div[1]/div/div[1]/div/ul/li[3]/span[2]/a[1]/i
    sleep  2s
    Input Text  xpath:/html/body/div[3]/div/div/div/div/div[2]/form/div[3]/div/textarea    test123
    sleep  2s
    Click element  xpath:/html/body/div[3]/div/div/div/div/div[2]/form/div[7]/div/button[2]
    sleep  4s
Dlete
    Click Element  xpath:/html/body/div/div/div[1]/div[2]/div[3]/div[1]/div/div[1]/div/ul/li[4]/span[2]/a[2]/i
    sleep  2s
    Handle Alert
    Sleep  4s
    Close Browser


*** Keywords ***
Provided precondition
    Setup system under test