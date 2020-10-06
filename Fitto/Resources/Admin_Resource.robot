*** Settings ***
Library  Selenium2Library

*** Variables ***
${URl}   http://23.100.25.47/
${Browser}   Chrome

*** Keywords ***
Admin Portal
    Open Browser   ${url}   ${Browser}
    Input Text  name:email  admin
    Input Text  name:password   password
    Click Element  xpath://*[@id="root"]/div/div/div/div/div/div[2]/button/span[1]
Add Organisation
    sleep  4s
   Double Click Element  class:Organization_addIcon__WQk2O
    sleep  3s
    Choose File   xpath:/html/body/div[2]/div[3]/div[2]/div/div/input   /Users/mohan/Downloads/download.jpeg
    sleep  2s
    Input Text   xpath:/html/body/div[2]/div[3]/div[3]/div/div/input  Mohan
    sleep  2s
    Input Text  xpath:/html/body/div[2]/div[3]/div[4]/div/div/input  mohankumar1@gmail.com
    sleep  2s
    Input Text   xpath:/html/body/div[2]/div[3]/div[5]/div/div/input  testtest
    sleep  2s
    Input Text   xpath:/html/body/div[2]/div[3]/div[6]/div[2]/div/div/input   9900997885
    sleep  2s
    Input Text   xpath:/html/body/div[2]/div[3]/div[6]/div[1]/div/div/input  JP nagar
    sleep  2s
    Input Text  Xpath:/html/body/div[2]/div[3]/div[6]/div[4]/div/div/input  test123@gmail.com
    sleep  2s
    Input Text   xpath:/html/body/div[2]/div[3]/div[6]/div[5]/div/div/textarea[1]   1109,, 24th Main Road, J. P. Nagar 1st Phase, Bangalore, Karnataka‎
    sleep  2s
    Input Text  xpath:/html/body/div[2]/div[3]/div[6]/div[6]/div/div/input   Bengaluru
    sleep  2s
    Input Text  xpath:/html/body/div[2]/div[3]/div[6]/div[7]/div/div/input  JP Nagar
    sleep  2s
    Input Text  xpath:/html/body/div[2]/div[3]/div[6]/div[8]/div/div/input   570028
    sleep  2s
    Input Text   xpath:/html/body/div[2]/div[3]/div[6]/div[9]/div/div/input  Karnataka
    sleep  2s
    Input Text   xpath:/html/body/div[2]/div[3]/div[6]/div[10]/div/div/input  India
    sleep  2s
    Click Element  xpath:/html/body/div[2]/div[3]/div[6]/div[11]/div/label[1]/span[1]/span[1]/input
    sleep  2s
    Click Button  xpath:/html/body/div[2]/div[3]/button

Practitioner
     sleep  4s
    Click Element   xpath:/html/body/div/div/div/div/div/div/div/div/div[3]/ul/a/div/div/span
    sleep  2s
    Click Button  class:PractitionerContainer_btnSearch__x5-gl
    sleep  2s
    input Text  xpath:/html/body/div[2]/div[3]/div[3]/div/div/input   Testdoctor
    sleep  2s
    Input Text  xpath:/html/body/div[2]/div[3]/div[4]/div/div/input  doctor12_test@gmail.com
    sleep  2s
    Input Text  xpath:/html/body/div[2]/div[3]/div[5]/div/div/input  Test1234
    sleep  2s
    Input Text   xpath:/html/body/div[2]/div[3]/div[6]/div/div/input   9876543210
    sleep  2s
    Input Text  xpath:/html/body/div[2]/div[3]/div[7]/div/div/input   500
    sleep  3s
    Input text  xpath:/html/body/div[2]/div[3]/div[8]/div/div/input  English
    sleep  2s
    Click Element  xpath:/html/body/div[2]/div[3]/div[10]/div/div/div/input
    sleep  1s
    Select Checkbox  xpath:/html/body/div[3]/div/ul/li[1]/span/span[1]/input
#    Select From List By Index   xpath:/html/body/div[2]/div[3]/div[10]/div/div/div/input   2
    sleep  2s
    Input Text  xpath:/html/body/div[2]/div[3]/div[12]/div/div/input   Testdoctor
    sleep  2s
    Select From List By Value   id:addPrac10   cardiology
    sleep  2s
    Input Text  xpath:/html/body/div[2]/div[3]/div[14]/div/div/input   M D in oncology and respiratory medicine
    sleep  2s
#    Select From List By Value
    input Text  xpath:/html/body/div[2]/div[3]/div[15]/div/div/input   Cardiologist
    sleep  2s
#    Input Text  xapth:/html/body/div[2]/div[3]/div[16]/div/div/input  MBBS
#    SLEEP  2s
    Input Text  xpath:/html/body/div[2]/div[3]/div[17]/div/div/input  SSAHE
    sleep  2s
    Input Text  xpath:/html/body/div[2]/div[3]/div[18]/div/div/input  Bengaluru
    sleep  2s
    Input Text  xpath:/html/body/div[2]/div[3]/div[19]/div/div/input   1990
    sleep  2s
    Input Text  xpath:/html/body/div[2]/div[3]/div[20]/div/div/input   testtest
    sleep  2s
    Click Button  xpath:/html/body/div[2]/div[3]/button
#    Click Element  xpath:/html/body/div[2]/div[3]/div[1]/svg
Patient
     sleep  4s
     Click Element  xpath:/html/body/div/div/div/div/div/div/div/div/div[5]/ul/a/div/div/span
     SLEEP  2s
     click Element  class:Patient_imgSearch__23eMM
     sleep  2s
     Input Text   xpath:/html/body/div/div/div/div/main/div/div[2]/div[2]/div[2]/div/div/input   Mohan
     SLEEP  2s
     Click Element  xpath:/html/body/div/div/div/div/main/div/div[2]/div[2]/div[3]/div/label[1]/span[1]/span[1]/input
     sleep  4s
     Click Element  xpath://*[@id="root"]/div/div/div/main/div/div[2]/div[2]/div[4]/div/div
     sleep  2s
#     Clear Element Text  xpath://input[@id="groupOne2"]
#     sleep  2s
     Wait Until Page Contains Element  //*[@id="root"]/div/div/div/main/div/div[2]/div[2]/div[4]/div/div
     sleep  4s
     Click Element   //*[@id="root"]/div/div/div/main/div/div[2]/div[2]/div[4]/div/div
#     Input Text    xpath://input[@id="groupOne2"]    2019-10-24
#     Input Text  xpath:/html/body/div/div/div/div/main/div/div[2]/div[2]/div[4]/div   24/06/1995
#     double Click Element  xpath:/html/body/div/div/div/div/main/div/div[2]/div[2]/div[4]/div/div


     Input Text  xpath:/html/body/div/div/div/div/main/div/div[2]/div[2]/div[5]/div/div/textarea[1]   xpath:24th Main Road, J. P. Nagar 1st Phase, Bangalore, Karnataka
     sleep  2s
     Input Text  xpath:/html/body/div/div/div/div/main/div/div[2]/div[2]/div[6]/div/div/input  Bengaluru
     sleep  2s
     Input Text  xpath:/html/body/div/div/div/div/main/div/div[2]/div[2]/div[7]/div/div/input  karnataka
     sleep  2s
     Input Text  xpath:/html/body/div/div/div/div/main/div/div[2]/div[2]/div[8]/div/div/input  India
     sleep  2s
     Input Text  xpath:/html/body/div/div/div/div/main/div/div[2]/div[2]/div[9]/div/div/input  mohankumar12.n@ambertag.com
     sleep  2s
     Input Text  xpath:/html/body/div/div/div/div/main/div/div[2]/div[2]/div[10]/div/div/input   9900997885
     sleep  2s
     Input Text  xpath:/html/body/div/div/div/div/main/div/div[2]/div[2]/div[20]/div/div/input  English,Kannada
     sleep  2s
     Input Text  xpath:/html/body/div/div/div/div/main/div/div[2]/div[2]/div[25]/div/div/input  test1234
     sleep  2s
     Click Element  xpath:/html/body/div/div/div/div/main/div/div[2]/div[2]/div[26]/input
     sleep  2s
     Click Element  xpath:/html/body/div/div/div/div/main/div/div[2]/div[2]/button
#     Click Element  xpath:/html/body/div[2]/div[3]/div[1]/svg
     sleep  2s
Schedule


#    sleep   4s
    click element   xpath://span[contains(text(),'Schedule')]
    sleep   4s
    click element   xpath://option[contains(text(),'apollo')]
    sleep   4s
    click element   xpath://option[contains(text(),'jayanagar')]
    sleep   4s
    click element   xpath://option[contains(text(),'Harish Kumars')]
#    sleep   4s
#    Wait Until Page Contains Element  css:#root > div > div > div > main > div > div > div.Schedule_filterBlock__vXdmN > div:nth-child(4) > div
#    sleep  2
##    Input Text  xpath://*[@id="root"]/div/div/div/main/div/div/div[1]/div[4]/div/div/input   28/08/2020
#    Double Click Element   css:#root > div > div > div > main > div > div > div.Schedule_filterBlock__vXdmN > div:nth-child(4) > div
#     sleep  2s
#     Clear Element Text   xpath:/html/body/div[1]/div/div/div/main/div/div/div[1]/div[4]/div/div/input
#     sleep  2s
#     Input Text  xpath:/html/body/div[1]/div/div/div/main/div/div/div[1]/div[4]/div/div/input  27/08/2020
##    Click Element    xpath=(//span[@class="MuiTypography-root MuiListItemText-primary MuiTypography-body1 MuiTypography-displayBlock"])[6]
#    Input Text    //input[@class="MuiInputBase-input MuiInput-input focus-visible"]    2020-08-20
#    rInput Text    //input[@class="MuiInputBase-input MuiInput-input focus-visible"]    2020-08-20
#    Double Click Element  xpath:/html/body/div[1]/div/div/div/main/div/div/div[1]/div[4]/div/div
#    Execute JavaScript  document.evaluate(‘/html/body/div[1]/div/div/div/main/div/div/div[1]/div[4]/div/div”]’,document.body,null,9,null).singleNodeValue.click();
#    Execute Javascript   document.querySelector("#root > div > div > div > main > div > div > div.Schedule_filterBlock__vXdmN > div:nth-child(4) > div > div > input")
#    Double Click Element   class:MuiInputBase-root MuiInput-root MuiInputBase-formControl MuiInput-formControl
#    Clear Element Text  xpath:/html/body/div[1]/div/div/div/main/div/div/div[1]/div[4]/div/div/input
#    Input Text   xpath:/html/body/div[1]/div/div/div/main/div/div/div[1]/div[4]/div/div/input   11-08-2020
#    input text      xpath://div[@id='root']//div[4]//div[1]//div[1]//input[1]   28
#    sleep   4s
#    input text      xpath://div[@id='root']//div[4]//div[1]//div[1]//input[1]   08
#    sleep   4s
#    input text      xpath:/html/body/div[1]/div/div/div/main/div/div/div[1]/div[4]/div/div/input  2020
#    sleep   4s
#    input text      xpath://div[@id='root']//div[5]//div[1]//div[1]//input[1]    09
#    sleep   4s
#    input text      xpath:/html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/main[1]/div[1]/div[1]/div[1]/div[5]/div[1]/div[1]/input[1]    09
#    sleep   4s
#    input text      xpath:/html/body/div[1]/div/div/div/main/div/div/div[1]/div[5]/div/div/input  2020
*** Keywords ***
Provided precondition
    Setup system under test