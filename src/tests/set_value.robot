*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When counter has a nonzero value and it is reset the value becomes zero
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Input Text  new_value  12
    Click Button  aseta
    Page Should Contain  nappia painettu 12 kertaa