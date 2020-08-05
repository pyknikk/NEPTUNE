# Project Neptune
The New Entities, Passwords, Tests, Updates, Nulls and Exports (NEPTUNE) system is desired to better understand Moonbank rate-of-growth and administration overhead to manage Moonbank customers

Deploy the sample code to a Cloud Function\n
Requires a BigQuery Dataset named: Neptune\n
Requires a Table named: rawmessages\n
Requires a Schema:  message:string\n

Goals:\n
Create a test topic\n
Deploy the sample function\n
Parse the pub/sub messages into fields\n
Create a new table in the neptune dataset with a matching schema\n
Stream the rows into BigQuery\n
Build a Data Studio Dashboard that reports on Database Activities\n


