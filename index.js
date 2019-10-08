const {app} = require('./app');
const port = 3000;

app.get('/', (req, res) => {
  res.json('Welcome to The Office Trivia App')
})

app.listen(process.eventNames.PORT || port, () =>
console.log(`listening to The Office Trivia on port: ${port}`))