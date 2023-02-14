*** Settings ***
Library     DatabaseLibrary
Library     OperatingSystem

Suite Setup         Connect To Database     pymysql     ${DBName}   ${DBUser}   ${DBPassword}   ${DBHost}   ${DBPort}
Suite Teardown      Disconnect From Database

*** Variables ***
${DBName}   mysql
${DBUser}   root
${DBPassword}   root
${DBHost}   localhost
${DBPort}   5436

*** Test Cases ***
CreatePersonTable
    ${output} =   Execute Sql String    Create table person(id integer,first_name varchar(20),last_name varchar(20));
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None

InsertDataInPersonTable
    ${output} =   Execute Sql String    Insert into person values(101,"John","Doe");
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None
    
InsertMultipleRecordsFromFile
    ${output} =    Execute Sql Script    ./TestData/mydb_person_insert.sql
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None

CheckIfExistsinPersonTable
    Check If Exists In Database    select id from mysql.person where first_name="Jane";

CheckIfNotExistsinPersonTable
    Check If Not Exists In Database    select id from mysql.person where first_name="Luana";

CheckIfTableExists
    Table Must Exist    person

VerifyRowCountIsZero
    Row Count Is 0    select * from mysql.person where first_name="xyz";

VerifyRowCountEqualToSomeValue
    Row Count Is Equal To X    select * from mysql.person where first_name="Jenny"    1

UpdateRecordInPersonTable
    ${output} =   Execute Sql String    update mysql.person set first_name="Lola" where id=104;
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None

RetrieveRecordsFromPersonTable
    @{queryResults} =   Query    select * from mysql.person;
    Log To Console  many    ${queryResults}.lower

DeleteRecordsFromPersonTable
    ${output} =   Execute Sql String    delete from mysql.person;
    Should Be Equal As Strings    ${output}    None