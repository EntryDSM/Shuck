const Express = require("express");

const app = Express();

app.get("/", (_, res) => {
  res.send("Hello, world!");
});

app.get("/hello", (_, res) => {
  res.send("Good job!");
});

const server = app.listen(20800, () => {
  console.info("[INFO] Server listening at 20800");
});

module.exports = server;
