***Settings***
Documentation       POST /mentoring/v1/mentors/{mentor_id}/agendas    (Create a Mentor Agenda)

Resource            ${EXECDIR}/resources/services.robot 

***Test Case***
Cadastrando a agenda do mentor  

    Delete Mentor Bd    QA Automation BD
    Create Mentor Bd
    ${resp}             Select Mentor Bd 
    ${id}               Convert To String       ${resp['id']}
        
    # ${id}               Select Mentor Bd 

    # Delete Mentee Bd    Mentee Company BD  
    # ${resp2}            Create Mentee Bd 
    # ${id_mentee}        Convert To String      ${resp2.json()}[id]
    # # ${id_mentee}        Select Mentee Bd   

    # ${payload}          Get Json            agendas/post_agendas.json            
    # ${response}         POST Agendas        ${id}      ${payload}

    # Status Should Be        200
    # Log To Console          ${response.json()}[id]


    
           
             
   


    # Delete Mentor Bd        QA Automation2
    # ${mentor}               Get Json                mentors/qaautomation2.json
    # ${response}             POST Outro Mentor       ${mentor}
    # ${id}                   Set Variable            ${response.json()}[id]
    # Status Should Be        201

    # ${payload}              Get Json            agendas/post_agendas.json
    # ${response}             POST Agendas        ${id}       ${payload}
    # Status Should Be        200                 ${response}
    


    
