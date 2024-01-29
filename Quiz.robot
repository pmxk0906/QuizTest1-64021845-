*** Settings ***
Library   SeleniumLibrary

# Suite Setup   Open Browser    https://automationexercise.com/
*** Variables ***
${browser}       chrome
${url}    https://automationexercise.com/
${title}  Automation Exercise
${btn_contact}  //*[@id="header"]/div/div/div/div[2]/div/ul/li[8]/a
${title_contact}  Automation Exercise - Contact Us
${input_Name}  //input[@name="name"] 
${input_Email}  //input[@name="email"]
${input_Subject}  //input[@name="subject"]
${input_Message}  //*[@id="message"]
${input_img}   //*[@id="contact-us-form"]/div[5]/input
${btn_submit}  //*[@id="contact-us-form"]/div[6]/input

# จำลองการใส่ข้อมูล
${Name}  Pimchanok Jamrurai
${Email}  pmxk102@gmail.com
${Subject}  Test Contact
${Message}  test contact
${img}  test1.png

*** Keywords ***
Open Browser Test
    Open Browser  ${url} ${browser}
Verify automationexercise page
    [Arguments]                ${title}
    Title Should Be            ${title}
Click Button Element
    Click Element   ${btn_contact}
Verify getintoch page
    [Arguments]                ${title_contact}
    Title Should Be            ${title_contact}
Input Name
    [Arguments]    ${Name}
    Input Text    ${input_Name}   ${Name}
Input Email
    [Arguments]    ${Email}
    Input Text    ${input_Email}    ${Email}
Input Subject
    [Arguments]    ${Subject}
    Input Text    ${input_Subject}    ${Subject}
Input Message
    [Arguments]    ${Message}
    Input Text    ${input_Message}    ${Message}

Click submit Button
    Click Element   ${btn_submit}




*** Test Cases ***
Register with valid info
    [Documentation]    Test the login functionality with valid credentials
    Open Browser    about:blank    chrome
    Go To           ${url}

    Verify automationexercise page  ${title}

    Click Button Element

    Verify getintoch page  ${title_contact}

    Input Name   ${Name}
    Input Email   ${Email}
    Input Subject   ${Subject}
    Input Message   ${Message}
    Choose File     ${input_img}  ${CURDIR}${/}${img}
    Click submit Button
