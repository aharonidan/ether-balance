=ether-balance
This is an application that stores Ethereum addresses and their balances.

In order to create a new entry in the database (Ethereum balance snapshot) use the following command:
  curl --data "address=ADDRESS" URL
Where ADDRESS is the ethereum address and URL is the application URL. For example, using the following command will add
an entry to the database with ethereum address curl 0xe0498570303d14456c71eb7f6f057ea149a425c6 to a local running server on port 9292.
  curl --data "address=0xe0498570303d14456c71eb7f6f057ea149a425c6" http://localhost:9292
  
To retrieve all accounts in the database use the following command.
  curl URL
Or 
  curl http://localhost:9292
When using the local server with port 9292.
