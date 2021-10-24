const express = require('express');
const app = express();
const swaggerUi = require('swagger-ui-express');
const swaggerDocument = require('./swagger.json');

app.use(express.json());

var messages = [{body: 'Hello from NodeJS'}]

// setup openapi
app.use('/swagger', swaggerUi.serve, swaggerUi.setup(swaggerDocument));
app.get('/v3/api-docs', (req, res) => res.json(swaggerDocument))

// setup message endpoints
app.get('/api/v1/messages', (req, res) => res.json(messages))
app.post('/api/v1/messages', (req, res) => {
  messages.push(req.body)
  res.json(req.body)
})

app.listen(8081, 'localhost', () => {
  console.log("Listening on http://localhost:8081")
})