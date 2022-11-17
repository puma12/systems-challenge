# SysAdmin/DevOps challenge
## Introduction

This is a microservice, that given a `HTTPS` request to the endpoint `/hello` a web proxy will pass the request to the backend application through the port 8080 with the following json response `{ "hello": "world" }`.
All the requests through port 80 will be redirected to the port 443.

## Requirements

In order to run this microservice it is only required to have installed Docker.

--- 

## Deployment

To deploy this application run the following command:
`docker-compose up`
This will deploy two services:
* Nginx proxy service
* Web app service

Once the services are up you can test the application running the following command 
`curl -L -k  https://127.0.0.1/hello`

Bear in mind it is added the flag `-k` due to it is using self signed certificate. To fix this message it also can be done by trusting the certificate it has been created running the following command:
`sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain ./ssl/localhost.crt`

## Solution

I chose this solution using docker-compose because you can deploy and test the microservice using a single command. Also it keeps the environment isolated to avoid issues with dependences. Using docker allows starting this microservice in less time. It has been used lightweight images. To create a smaller image in the web application it's been applied multi-stage build. The first one contains all the software to generate the artifacts and the second one copies the binary to the web-app. 
