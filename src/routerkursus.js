import db from "./db";
import Express from "express";
import { Server } from "http";

export function ambilDataKursus(req, res) {
  db.query("SELECT * FROM komputer", { type: db.QueryTypes.SELECT })
    .then(data => res.json(data))
    .catch(console.log);
}


export function simpanDataKursus(req, res) {
  //Query
  db.query(
    `INSERT INTO komputer (id,no_pendaftaran,jenis_kursus,nama_kursus,hari,biaya_pendaftaran,biaya_fasilitas,total_pembayaran) VALUES ('${req.body.id}','${req.body.no_pendaftaran}','${req.body.jenis_kursus}','${req.body.nama_kursus}','${req.body.hari}', '${req.body.biaya_pendaftaran}', '${req.body.biaya_fasilitas}','${req.body.total_pembayaran}')`
  )
    .then(i => {
      res.status(201).json([]);
    })
    .then(e => {
      res.status(500).json(e);
    });
}
export function simpanEditDataKursus(req, res) {
  //Query
  let {
    no_pendaftaran,
    jenis_kursus,
    nama_kursus,
    hari,
    biaya_fasilitas,
    biaya_pendaftaran,
    total_pembayaran
  } = req.body;

  let { id } = req.params;

  db.query(`
    update komputer set
    no_pendaftaran = '${req.body.no_Pendaftaran}',
    jenis_kursus = '${req.body.jenis_kursus}',
    nama_kursus = '${req.body.nama_kursus}',
    hari = '${req.body.hari}',
    biaya_fasilitas = '${req.body.biaya_fasilitas}',
    biaya_pendaftaran = '${req.body.biaya_pendaftaran}',
    total_pembayaran = '${req.body.total_pembayaran}'

    WHERE id = ${id}

  `);
}
export function deleteDataKursus(req, res) {
  //Query
  let { id } = req.params;
  db.query(
    `
    DELETE FROM komputer WHERE id= ${id}
  `
  )
    .then(() => {
      res.status(202).end();
    })
    .catch(e => {
      console.log(e);
      res.status(500).end();
    });
}




export function login(req, res) {
  // Destructuring
  const { username, password } = req.body;
  
  console.log(`login(req, res): username: ${username}, ${password}`);
  
  var loginQuery = `SELECT * FROM user where username = '${username}' AND password = '${password}'`;
  console.log(loginQuery);
  db.query(
    loginQuery,
    { type: db.QueryTypes.SELECT }
  ).then(data => {
    if (data.length == 1) {
      //res.json(data[0]);
      console.log("success login");
      res.json(data[0]);
    } else {
        console.log("error")
        res.status(500).send();
    }
  })
  .catch(error => {
    console.log(error);
    res.json(error);
  });


  
}
