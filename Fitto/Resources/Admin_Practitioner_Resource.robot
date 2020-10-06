*** Settings ***
Library  Selenium2Library

*** Variables ***
${URl}   http://fitto-uat-admin.fitto-at.com/
${Browser}   Chrome


*** Keywords ***
Open My Browser
     Open Browser   ${URL}   ${Browser}
     Sleep  6s
Close Browsers
     Close all Browsers
Input Username
    [Arguments]    ${username}
    Input Text   xpath://*[@id="root"]/div/div/div/div/div/div[1]/div[1]/div/input   ${username}

Input Password
    [Arguments]    ${password}
     Input Text  xpath://*[@id="root"]/div/div/div/div/div/div[1]/div[2]/div/input  ${password}
Click Login button
     Click Element  xpath://*[@id="root"]/div/div/div/div/div/div[2]/button/span[1]
Practitioner
     sleep  4s
    Click Element   xpath:/html/body/div/div/div/div/div/div/div/div/div[3]/ul/a/div/div/span
    sleep  2s
    Click Button  class:PractitionerContainer_btnSearch__x5-gl
    sleep  2s
Input Doctorname
    [Arguments]   ${doctorname}
    input Text  xpath:/html/body/div[2]/div[3]/div[3]/div/div/input   ${doctorname}
    sleep  3s
Input EmailID
   [Arguments]  ${Email_ID}
    Input Text  xpath:/html/body/div[2]/div[3]/div[4]/div/div/input     ${Email_ID}
    sleep  2s
Input Registration-No
    [Arguments]  ${Registration-No}
    Input Text  xpath:/html/body/div[2]/div[3]/div[5]/div/div/input   ${Registration-No}
    sleep  2s
Input Phone_No
    [Arguments]  ${Phone_No}
    Input Text   xpath:/html/body/div[2]/div[3]/div[6]/div/div/input   ${Phone_No}
    sleep  2s
Input Fees
    [Arguments]   ${Fees}
    Input Text  xpath:/html/body/div[2]/div[3]/div[7]/div/div/input   ${Fees}
    sleep  3s
Input Languages
    [Arguments]   ${Languages}
    Input text  xpath:/html/body/div[2]/div[3]/div[8]/div/div/input  ${Languages}
    sleep  2s
    Click Element  xpath:/html/body/div[2]/div[3]/div[10]/div/div/div/input
    sleep  1s
    Select Checkbox  xpath:/html/body/div[3]/div/ul/li[1]/span/span[1]/input
#    Select From List By Index   xpath:/html/body/div[2]/div[3]/div[10]/div/div/div/input   2
    sleep  2s
Input EmployeeID
    [Arguments]  ${Employee_ID}
    Input Text  xpath:/html/body/div[2]/div[3]/div[12]/div/div/input   ${Employee_ID}
    sleep  2s
    Select From List By Value   id:addPrac10   cardiology
    sleep  2s
Input PrimaryQualification
    [Arguments]  ${PrimaryQualification}
    Input Text  xpath:/html/body/div[2]/div[3]/div[14]/div/div/input   ${PrimaryQualification}
    sleep  2s
##    Select From List By Value
    input Text  xpath:/html/body/div[2]/div[3]/div[15]/div/div/input   Cardiologist
    sleep  4s
#    Input Text  xapth:/html/body/div[2]/div[3]/div[16]/div/div/input  MBBS
#    SLEEP  2s
Input Medical School
    [Arguments]  ${Medical_School}
    Input Text  xpath:/html/body/div[2]/div[3]/div[17]/div/div/input  ${Medical_School}
    sleep  2s
Input Residency
    [Arguments]  ${Residency}
    Input Text  xpath:/html/body/div[2]/div[3]/div[18]/div/div/input  ${Residency}
    sleep  2s
Input GraduationYear
    [Arguments]  ${GraduationYear}
    Input Text  xpath:/html/body/div[2]/div[3]/div[19]/div/div/input   ${GraduationYear}
    sleep  2s
Input doctorPassword
    [Arguments]  ${doctorPassword}
    Input Text  xpath:/html/body/div[2]/div[3]/div[20]/div/div/input   ${doctorPassword}
    sleep  2s
    Click Button  xpath:/html/body/div[2]/div[3]/button