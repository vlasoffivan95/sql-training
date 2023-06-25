import pg from "pg";
import { mapUsers } from "./utils/index.mjs";
import { getUsers } from "./api/index.mjs";
const { Client } = pg;

const config = {
  user: "postgres",
  password: "Qwerty12",
  host: "localhost",
  port: 5432,
  database: "training_db",
};

const client = new Client(config);

const users = await getUsers();

// const users = [
//   {
//     name: "Ivan Vlasov",
//     email: "vlasoff.ivan95@gmail.com",
//     password: "Qwerty12",
//     phoneNum: "095-57-99-657",
//   },
//   {
//     name: "Ivan Hucpov",
//     email: "vlasoff.ivan95222@gmail.com",
//     password: "Qwerty312",
//     phoneNum: "095-572-12",
//   },
//   {
//     name: "Anatolii Sharij",
//     email: "rodadebara5@gmail.com",
//     password: "Qwerty1223Donni",
//     phoneNum: "093-57-91-6537",
//   },
// ];

await client.connect();

const { rows } =
  await client.query(`INSERT INTO users ("name", "email", "password", "phone_num") 
VALUES ${mapUsers(users)} RETURNING *;`);

console.log(rows);

await client.end();
