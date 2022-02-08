import express from "express";
import pool from "../utils/db/connect";

const server = express();
const { PORT = 5001 } = process.env;
server.listen(PORT, () => {
  console.log("The server is ");
});
