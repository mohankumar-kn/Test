*** Settings ***
Library   Selenium2Library
Resource  ../Resources/Admin_Resource.robot


*** Test Cases ***
TC1
    Admin Portal
    sleep  2s

#    Add Organisation
    sleep  2s
#    Practitioner
    sleep  2s
    Patient
    sleep  2s
#    Schedule
    close browser