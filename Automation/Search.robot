*** Settings ***
Library    SeleniumLibrary
Documentation     Test cases for Search functionality
Resource    SearchKeyword.resource

*** Test Cases ***
Steps for Search functionality
    Step1: Go to the home page
    Step2: Type Search Item in Search Bar
    Step3: Click on Search button
    Step4 : Verify the search result
[Teardown]  Close Browser
