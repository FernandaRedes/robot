***Settings***
Documentation           Camada de serviços do projeto de automação

Library         RequestsLibrary
Library         Collections
Library         libs/db.py

Resource        helpers.robot

***Variables***
# ${BASE_URL_API}         https://staging-s1-network-v2.distrito.network/
${BASE_URL_API}         http://localhost:3001/mentoring/v1 
${TOKEN}                Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI5MzEiLCJzY3AiOiJ1c2VyIiwiYXVkIjpudWxsLCJpYXQiOjE2MzA1MDkwMzUsImV4cCI6IjE2NDg5MTcyNTciLCJqdGkiOiI1ZTc0MjIwZC03ZDQwLTQwZjUtOWRjYS0xNDY2OTFmNTE1ODkifQ.5U4QjFzlr2r_5A-YhD-J4sNZ159Qbv6n62KXWXPiCKZHFbsp0Kovp2-ONtQxFRYnqB7bdtutN0sULeTXKTcIOg
&{HEADERS}              Authorization=${TOKEN}       Content-Type=application/json      
${TOKEN2}               Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI1Iiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNjI4NjA4MzA0LCJleHAiOiIxNjQ3MDE2NTI2IiwianRpIjoiOGFlOTlhODEtZWQ5Ni00ZTUxLWI0MzMtOGZjNjcxMWFhZDAxIn0.goHkcrKKckn1ocAVvgOphXqTJg4lPqaAR2R8UtvjmjEto2yiv3JXwbjCq97tFL2_HAJxD83cqJrwWmQMqLFZcg
&{HEADERS2}             Authorization=${TOKEN2}       Content-Type=application/json      

***Keywords***
#Helpers

## AGENDAS >>
#GET /mentoring​/v1​/mentors​/{mentor_id}​/agendas
GET Agendas 
    [Arguments]     ${id}

    ${response}     GET        ${BASE_URL_API}/mentors/${id}/agendas
    ...             headers=${HEADERS}
    ...             expected_status=any 

    [return]        ${response}

#POST /mentoring​/v1​/mentors​/{mentor_id}​/agendas
POST Agendas 
    [Arguments]     ${id}       ${payload}  

    ${response}     POST        ${BASE_URL_API}/mentors/${id}/agendas
    ...             json=${payload}
    ...             headers=${HEADERS}
    ...             expected_status=any 

    [return]        ${response}

#PUT /mentoring​/v1​/agendas​/{id}​
PUT Agendas 
    [Arguments]     ${id}

    ${response}     PUT        ${BASE_URL_API}/agendas/${id}
    ...             headers=${HEADERS}
    ...             expected_status=any 

    [return]        ${response}
