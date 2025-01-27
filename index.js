const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('Hello World From: Git Push -> Code Build -> ECR -> App Builder')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})