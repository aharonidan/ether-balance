# Ethereum Balance
This is an application that stores snapshots of balances of Ethereum addresses.

### POST - create new entry
To create a new entry use the following command:
```sh
$ curl --data "address=ADDRESS" URL
```
Where ADDRESS is the ethereum address and URL is the application URL.

For example, using the following command will create an entry with address 0xe0498570303d14456c71eb7f6f057ea149a425c6 to a local running server on port 9292. Account balance will be retrieved from https://etherchain.org/
```sh
$ curl --data "address=0xe0498570303d14456c71eb7f6f057ea149a425c6" http://localhost:9292
```
### GET - Retrieve all entries
To retrieve all accounts in the database use the following command.
```sh
$ curl URL
```
For example, querying the local server on port 9292 will be as follows.
```sh
$ curl http://localhost:9292
```
## Local Installation
Simply download the project and run
```sh
$ rackup
```
### Refresh database
To start a new database delete the existing sqlite file and run the following.
```sh
$ sequel -m migrations sqlite://data.sqlite
```
