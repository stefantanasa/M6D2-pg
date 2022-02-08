import pool from "./connect.js";
import fs from "fs/promises";
import { fileURLToPath } from "url";
import { join, dirname } from "path";

const dirname = fileURLToPath(import.meta.url);
const sqlFilePath = join(dirname, "tables.sql");

const createTables = async () => {
  try {
    const sqlQueryAsString = await fs.readFile(sqlFilePath, "utf-8");

    await pool.query(sqlQueryAsString);
    console.log("Success");
  } catch (error) {
    console.log("something went wrong", error);
  }
};

createTables();
