# Docker Cloud Example Scenario
A docker cloud example, with renting of virtualized services, managed and monitorized.
The repository recreates an example with multiple virtualized services, and manages them with network monitoring tools.

## Basic Usage

The repository includes two scripts, one for the automatic initialization of the entire scenario, and another that shuts them all down. In order to add an extra network when the rest are already running, a simple docker-compose up -d will work.

To test the scenario, you must run:

```bash
#Initializing the example
sudo ./init.sh

#Closing the example
sudo ./close.sh
```

The superuser privileges are usually required in the majority of Linux Docker installations.

## Default services

Without any modifications, the example includes:

- A single-page Apache server, redirected to port 5000
- A Wordpress installation, that consists of: 
     - A Wordpress containter, redirected to port 8000
     - A MySQL server, not visible from the outside

The first time that the example is ran, the Wordpress needs to be installed, accessing it from a broswer, in order to test the resources monitoring.

## Structure of the example

The structure of the project is simple. The folder that holds all the network and container information is /networks. Inside, there will be as much directories as clients/networks. We suppose that each client needs one or more containers that interact only within that network. That's why there is a single docker-compose file in each of the folders, with the number and type of containers needed.

Adding, modifying or removing services from the example, as it was said before, means adding/removing folders in the /network directory, and/or editing the docker-compose.yml inside them.




