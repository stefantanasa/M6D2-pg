import express from "express";

const server = express();

const { PORT = 5001 } = process.env;

server.use(express.json());

server.listen(PORT, () => {
  console.log(`Server is listening on port ${PORT}`);
});

server.on("error", (error) => {
  console.log(`Server is stopped : ${error}`);
});
