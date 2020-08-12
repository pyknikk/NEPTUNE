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
Create a Cloud Function subscribed to the moonbank-neptune activities pub/sub topic  
  Messages from the moonbank-neptune activites pub/sub topic are sent 1 to 3 times per minute  
Parse the message and write into a new table in your Neptune Dataset  
  SCHEMA: id:string,ipaddress:string,action:string,accountnumber:string,actionid:integer,name:string,actionby:string    
  Example: 20200812040801981475,195.174.170.81,UPDATE,GB25BZMX47593824219489,4,Emily Blair,STAFF  

Build a Data Studio Dashboard that reports on Database Activities    

NOTE: the Cloud Function will need to be created in the moonbank-neptune project. At present, GCP does not permit a Pub/Sub-based Cloud Function to subscribe to a topic in another project - so the Cloud Function must be deployed in the same project as the pub/sub topic.

The DataEngineers@roimoonbank.com group has the following IAM permissions to the moonbank-neptune project  
  Cloud Functions Admin  
  Pub/Sub Subscriber  
  Create Service Accounts  

To deploy your cloud function - use a custom service account
  Create a Service Account to run your Cloud Function in the moonbank-neptune project  
  Grant the Service Account BigQuery Data Editor to the dataset in your Project  
