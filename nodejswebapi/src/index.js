import express from 'express';
import ip from 'ip';
import dotenv from 'dotenv';
import cors from 'cors';
import bcrypt from 'bcrypt';
import jwt from 'jsonwebtoken';
import bodyParser from 'body-parser';
import database from './config/mysql.config.js';

const jsonParser = bodyParser.json();


dotenv.config();
const PORT = process.env.SERVER_PORT || 3000;
const app = express();
const secret = process.env.SECRET
app.use(cors({ origin: '*' }));

app.get('/', (req, res) => {
    res.send('Hello World!');
});

app.get("/getAdmin", jsonParser, function (req, res) {
    //   console.log(req.body);
    database.getConnection(function (err, connection) {
        if (err) {
            res.json({ err });
            connection.release();
        //   console.log(err);
        } else {
          connection.query(
            "SELECT * FROM Admin",
            [req.body.userID],
            function (err, data) {
              if (err) {
                res.json({ err });
                connection.release();
              } else {
                // console.log(data.length);
                res.json({ data });
                connection.release();
              }
            }
          );
        }
      });
    });

console.log(process.env)
app.listen(PORT, () => console.log(`Server running on : ${ip.address()}:${PORT}`));
