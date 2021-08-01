*** Variables ***
${IP}             127.0.0.1
${port}           2222
${username}       anwar
${password}       root1234

*** Keywords ***
List All Topics And Print Them
    ${output}    list all topics
    Log    ${output}
