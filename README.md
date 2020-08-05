# Project Neptune
The New Entities, Passwords, Tests, Updates, Nulls and Exports (NEPTUNE) system is desired to better understand Moonbank rate-of-growth and administration overhead to manage Moonbank customers

## To deploy the sample code to a Cloud Function  
Requires a BigQuery Dataset named: Neptune  
Requires a Table named: rawmessages  
Requires a Schema:  message:string  

## Goals:  
Create a test topic  
Deploy the sample function  
Parse the pub/sub messages into fields  
Create a new table in the neptune dataset with a matching schema  
Stream the rows into BigQuery  
Build a Data Studio Dashboard that reports on Database Activities  


