***Settings***
Documentation       GET /mentoring/v1/sectors    (Retrive a list with all sectors)

Resource            ${EXECDIR}/resources/services.robot 

***Test Cases***
Get Sector List 

    ${list}         Get Json        sectors/sectors.json

    FOR         ${item}     IN      @{list}[list_sectors]
        Log To Console      ${item}
    END
##Aqui consigo carregar o json pra dict, mas preciso fazer com que la no db.py ele pegue esses dados pro insert

    Set Test Variable ${list}



 
