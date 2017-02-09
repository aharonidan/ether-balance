# ether-balance
This is an application that stores snapshots of Ethereum addresses and their balances.

### Post new entry
In order to create a new entry in the database (Ethereum balance snapshot) use the following command:
```sh
$ curl --data "address=ADDRESS" URL
```
Where ADDRESS is the ethereum address and URL is the application URL. 
For example, using the following command will add
an entry to the database with ethereum address 0xe0498570303d14456c71eb7f6f057ea149a425c6 to a local running server on port 9292.
```sh
$ curl --data "address=0xe0498570303d14456c71eb7f6f057ea149a425c6" http://localhost:9292
```
### Retrieve all entries
To retrieve all accounts in the database use the following command.
```sh
$ curl URL
```
Or 
```sh
$ curl http://localhost:9292
```
When using the local server with port 9292.
