*** Settings ***
Library  Selenium2Library

*** Variables ***
${URl}   https://23.100.25.47:8443/fitto-website
${Browser}   Chrome

*** Keywords ***
Patient
    Open Browser   ${url}   ${Browser}
    sleep  4s
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
    Click Element  xpath://option[contains(text(),'cardiology')]
    sleep  3s
    Click Element  xpath://option[contains(text(),'Harish Kumar')]
    sleep  3s
    Click Element  xpath://option[contains(text(),'apollo')]
    sleep  4s
#    Click Button  xpath:/html/body/div/div/div/div[2]/div[3]/div[1]/div/div/div[4]/div/div[2]/div/div[2]/div/div/button
    Click Element  xpath://*[@id="openPopup"]
    sleep  4s
    Click Element  xpath:/html/body/div[3]/div/div/div/div/div[2]/section/div[2]/div/div/div/div[2]/div[2]/div/table/tbody/tr/td/div/div/div[1]/div[2]/table/tbody/tr[1]/td[5]/a/div/span[1]
    sleep  4s
    Input Text   id:AppoReason  testing
    sleep  2s
    Click Element  Xpath:/html/body/div[3]/div/div/div/div[3]/form/div[6]/div[1]/div/button[1]
    sleep  2s
    Handle Alert
    Sleep  4s
#Edit
    Click Element  xpath:/html/body/div/div/div[1]/div[2]/div[3]/div[1]/div/div[1]/div/ul/li[13]/span[2]/a[1]/i
    sleep  2s
    Input Text  xpath:/html/body/div[3]/div/div/div/div/div[2]/form/div[3]/div/textarea    test123
    sleep  2s
    Click element  xpath:/html/body/div[3]/div/div/div/div/div[2]/form/div[7]/div/button[2]
    sleep  4s
    close Browser
#Dlete
#    Click Element  xpath:/html/body/div/div/div[1]/div[2]/div[3]/div[1]/div/div[1]/div/ul/li[4]/span[2]/a[2]/i
#    sleep  2s
#    Handle Alert
#    Sleep  4s
#    close Browser
Hospital
#Admin Portal
    Open Browser   ${url}   ${Browser}
    sleep  4s
    Input Text   xpath:/html/body/div/div/div/div[2]/div/div/div[2]/form/div/div[1]/input[1]  apollo@gmail.com
    sleep  1s
    Input Text  xpath:/html/body/div/div/div/div[2]/div/div/div[2]/form/div/div[1]/input[2]  password
    sleep  1s
    Click Element  xpath:/html/body/div/div/div/div[2]/div/div/div[2]/form/div/div[3]/button[1]
    sleep  3s
#    Close Browser
#    Sleep  4s
#Appointments
    Sleep  3s
    Click Element   xpath:/html/body/div/div/div/div[2]/div[3]/div[1]/div/div[1]/div[1]/div[2]/div/div/div[1]/div/section/article[10]/div[2]/span[1]/a/i
    sleep  2s
    Input Text   xpath:/html/body/div[1]/div/div/div[5]/div/div/form/div[1]/div[2]/div/div[2]/div[1]/div[1]/textarea   testing
    sleep  2s
    Input Text  xpath://*[@id="inputKey"]  test
    sleep  2s
    Input Text  xpath://*[@id="duratiion"]  2hr
    sleep  2s
    Click Element  xpath:/html/body/div[1]/div/div/div[5]/div/div/form/div[2]/button[2]
    sleep  3s
    Handle Alert
    sleep  4s
    Close Browser
Doctors
     Open Browser   ${url}   ${Browser}
    sleep  4s
    Input Text   xpath:/html/body/div/div/div/div[2]/div/div/div[2]/form/div/div[1]/input[1]  dr.trial@fitto-at.com
    sleep  1s
    Input Text  xpath:/html/body/div/div/div/div[2]/div/div/div[2]/form/div/div[1]/input[2]  password
    sleep  1s
    Click Element  xpath:/html/body/div/div/div/div[2]/div/div/div[2]/form/div/div[3]/button[1]
#Patient Appointments
    Sleep  4s
    Click Element  xpath:/html/body/div/div/div[1]/div[2]/div[3]/div[1]/div/div[1]/div/section/article[7]/div[2]/span/a/i
    Sleep  4s
    Page Should Contain Element  xpath:/html/body/div/div/div/div[1]/div[2]/div[3]/div/div[6]/div[1]/button
    sleep  3s
    Click Element  xpath: /html/body/div/div/div/div[1]/div[2]/div[3]/div/div[6]/div[4]/button