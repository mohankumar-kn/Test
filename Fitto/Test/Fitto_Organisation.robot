*** Settings ***
Library  Selenium2Library

*** Variables ***
${URl}   https://23.100.25.47:8443/fitto-website
${Browser}   Chrome

*** Test Cases ***
Admin Portal
    Open Browser   ${url}   ${Browser}
    sleep  4s
    Input Text   xpath:/html/body/div/div/div/div[2]/div/div/div[2]/form/div/div[1]/input[1]  apollo@gmail.com
    sleep  1s
    Input Text  xpath:/html/body/div/div/div/div[2]/div/div/div[2]/form/div/div[1]/input[2]  password
    sleep  1s
    Click Element  xpath:/html/body/div/div/div/div[2]/div/div/div[2]/form/div/div[3]/button[1]
    sleep  3s
#Appointments
#    Sleep  3s
#    Click Element   xpath:/html/body/div/div/div/div[2]/div[3]/div[1]/div/div[1]/div[1]/div[2]/div/div/div[1]/div/section/article[2]/div[2]/span[1]/a/i
#    sleep  2s
#    Input Text   xpath:/html/body/div[1]/div/div/div[5]/div/div/form/div[1]/div[2]/div/div[2]/div[1]/div[1]/textarea   testing
#    sleep  2s
#    Input Text  xpath://*[@id="inputKey"]  test
#    sleep  2s
#    Input Text  xpath://*[@id="duratiion"]  2hr
#    sleep  2s
#    Click Element  xpath:/html/body/div[1]/div/div/div[5]/div/div/form/div[2]/button[2]
#    sleep  3s
#    Handle Alert
#    sleep  4s
#    close browser
Email
    Go To  https://accounts.google.com/ServiceLogin?continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&service=mail&sacu=1&rip=1
    sleep  4s
    Input Text  xpath:/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[1]/div/form/span/section/div/div/div[1]/div/div[1]/div/div[1]/input   fittopatient1@gmail.com
    sleep  3s
    click element  xpath:/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button/div[2]
    sleep  6s
    Input Text  xpath:/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[1]/div/form/span/section/div/div/div[1]/div[1]/div/div/div/div/div[1]/div/div[1]/input  password@1234
    sleep  3s
    Click Element  xpath:/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button/div[2]
    sleep  10s
    Double Click Element  xpath:/html/body/div[8]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div[1]/div[4]/div[2]/div/table/tbody/tr[1]/td[5]