*** Settings ***
Library  Selenium2Library

*** Variables ***
${URl}   https://23.100.25.47:8443/fitto-website
${Browser}   Chrome

*** Test Cases ***
Admin Portal
    Open Browser   ${url}   ${Browser}
    sleep  4s
    Input Text   xpath:/html/body/div/div/div/div[2]/div/div/div[2]/form/div/div[1]/input[1]  dr.trial@fitto-at.com
    sleep  1s
    Input Text  xpath:/html/body/div/div/div/div[2]/div/div/div[2]/form/div/div[1]/input[2]  password
    sleep  1s
    Click Element  xpath:/html/body/div/div/div/div[2]/div/div/div[2]/form/div/div[3]/button[1]
Patient Appointments
    Sleep  4s
    Click Element  xpath:/html/body/div/div/div[1]/div[2]/div[3]/div[1]/div/div[1]/div/section/article[2]/div[2]/span/a/i
    Sleep  6s
    Click Element  xpath: /html/body/div/div/div/div[1]/div[2]/div[3]/div/div[6]/div[4]/button