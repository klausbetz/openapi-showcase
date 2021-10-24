# OpenAPI Showcase :rocket:
The main purpose of this project is to show, that as long as an API sticks to a certain contract, the technology behind it doesn't matter for the client.

## Description

This repository contains two different RESTful APIs, which are at least from a technological point completely different.

On the one hand there's a `nodeJS`-server and on the other hand a `Spring`-server.

However, both of them share the same API-interface. This means, that both of them fulfil the same contract, which looks like this:

```
GET  /api/v1/messages  // returns a list of messages
POST /api/v1/messages  // adds a message to the list of messages

Message DTO
{
    body: string
}
```

### Important URLs
Note that just the port is different of both servers  :wink:

|                   | NodeJS                                | Spring                                |
|-------------------|---------------------------------------|---------------------------------------|
| OpenAPI UI        | http://localhost:8081/swagger         | http://localhost:8080/swagger         |
| OpenAPI JSON Doc  | http://localhost:8081/v3/api-docs     | http://localhost:8080/v3/api-docs     |
| Messages Endpoint | http://localhost:8081/api/v1/messages | http://localhost:8080/api/v1/messages |


## Generating API clients :robot:

One of the coolest aspects of using OpenAPI, is, that you can generate API-clients.
Using generators like `openapi-generator-cli` makes generating a client for e.g. `Dart` a breeze.

You may want to try the prebuilt script [create-api-client.sh](test/create-api-client.sh) which calls docker to generate a `Dart` client package. Before you execute the script, you should start the backend where you want to generate the client from.

Note that generating the client either from Spring or from NodeJS will result in the same generated code :exploding_head: