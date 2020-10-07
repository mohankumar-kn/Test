*** Settings ***
Library   Selenium2Library
Resource  ../Resources/Admin_Practitioner_Resource.robot
Library     DataDriver   ../TestData1/testdata2.xls
Suite Setup  Open My Browser
Suite Teardown  Close Browsers
Test Template  Invalid Login




*** Test Cases ***

lOginTestWithExcel using    ${username}  ${password}   ${doctorname}  ${Email_ID}  ${Registration-No}  ${Phone_No}   ${Fees}  ${Languages}  ${Employee_ID}  ${PrimaryQualification}   ${Medical_School}  ${Residency}  ${GraduationYear}  ${doctorPassword}

*** Keywords ***
Invalid Login
    [Arguments]   ${username}   ${password}    ${doctorname}  ${Email_ID}  ${Registration-No}  ${Phone_No}   ${Fees}  ${Languages}  ${Employee_ID}  ${PrimaryQualification}   ${Medical_School}  ${Residency}  ${GraduationYear}  ${doctorPassword}

    Input Username  ${username}
    sleep  2s
    Input Password   ${password}
    sleep  2s
    Click Login button
    sleep  3s
    Practitioner
    sleep  3s
    Input Doctorname   ${doctorname}

    sleep  1s
    Input EmailID    ${Email_ID}
    sleep  1s
    Input Registration-No  ${Registration-No}
    sleep  1s
    Input Phone_No   ${Phone_No}
    sleep  1s
    Input Fees  ${Fees}
    sleep  1s
    Input Languages   ${Languages}
    sleep  1s
    Input EmployeeID  ${Employee_ID}
    sleep  1s
    Input PrimaryQualification  ${PrimaryQualification}
    sleep  1s
    Input Medical School  ${Medical_School}
    sleep  1s
    Input Residency  ${Residency}
    sleep  1s
    Input GraduationYear  ${GraduationYear}
    sleep  1s
    Input doctorPassword  ${doctorPassword}
