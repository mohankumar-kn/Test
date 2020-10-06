*** Settings ***
Library   Selenium2Library
Resource  ../Resources/Fitto_Main_App.robot
*** Variables ***
#${URL1}   http://localhost:63342/Oneplace/report.html?_ijt=of5n8ci8pdbqkb2q69g2oc7bvl
#${Browser1}  Chrome
*** Test Cases ***
Patient Page
    Patient
    Sleep  2s
Organisation
     Hospital
     sleep  2s
Doctors Page
     Doctors

     Close Browser