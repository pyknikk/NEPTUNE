# Project Neptune
The New Entities, Passwords, Tests, Updates, Nulls and Exports (NEPTUNE) system is desired to better understand Moonbank rate-of-growth and administration overhead to manage Moonbank customers

## To deploy the sample code to a Cloud Function  
Requires a BigQuery Dataset named: Neptune  
Requires a Table named: rawmessages  
Requires a Schema:  message:string  

## Goals:  
Create a test topic  
Deploy the sample function sending csv data 
Parse the pub/sub messages into fields  
Create a new table in the neptune dataset with a matching schema  
Stream the rows into BigQuery  

## Additional Goals:  
Subscripe to the moonbank-neptune activities topic  
Process the messages sent 1 to 3 times per second that are emitted    
SCHEMA: action:string,accountnumber:string,actionid:integer,name:string,actionby:string  
Build a Data Studio Dashboard that reports on Database Activities   


