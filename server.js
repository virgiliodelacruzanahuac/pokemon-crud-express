//Para probar en Postman
//https://stackoverflow.com/questions/24543847/req-body-empty-on-posts
const express = require('express'),
  app = express(),
  mysql = require('mysql'), // import mysql module
  cors = require('cors'),
  bodyParser = require('body-parser');



// setup database
const db = mysql.createConnection({
  host: 'freedb.tech',
  user: 'freedbtech_vdelacruz',
  password: 'madhava108',
  database: 'freedbtech_lenguajes'
})



app.use(cors())
app.use(bodyParser.json())
app.use(express.urlencoded());
app.use(express.static("public"));

app.get("/", (request, response) => {
  response.sendFile(__dirname + "/views/index.html");
});



app.get("/mostrarpokemones", function(req, res) {
  let sql = `SELECT * FROM pokemon`;
  db.query(sql, function(err, data, fields) {
    if (err) throw err;
    res.json({
      data
      
    })
  })
});

app.post("/actualizarpokemones", function(req, res) {
  let sql = `UPDATE pokemon SET nombre_pokemon=?, tipo_pokemon = ? WHERE clave_pokemon =?`;
    let values = [
        req.body.nombre_pokemon,
        req.body.tipo_pokemon, 
        req.body.clave_pokemon 
 
  ];
 db.query(sql, values, function(err, data, fields) {
    if (err) 
    {
      //res.json(req.body);
      res.json(err);
    };
    res.json({
      data,
      status: 200,
      message: "Pokemon actualizado correctamente."
    })
  })
});

app.post("/borrarpokemones", function(req, res) {
  let sql = `DELETE FROM pokemon WHERE clave_pokemon =?`;
    let values = [
        req.body.clave_pokemon 
 
  ];
 db.query(sql, values, function(err, data, fields) {
    if (err) 
    {
      //res.json(req.body);
      res.json(err);
    };
    res.json({
      status: 200,
      message: "Pokemon borrado correctamente"
    })
  })
});



app.post("/insertarpokemones", function(req, res) {
  let sql = `INSERT INTO pokemon (nombre_pokemon,tipo_pokemon) VALUES(?,?)`;
    let values = [
        req.body.nombre_pokemon,
        req.body.tipo_pokemon
 
  ];
 db.query(sql, values, function(err, data, fields) {
    if (err) 
    {
      //res.json(req.body);
      res.json(err);
    };
    res.json({
      data,
      status: 200,
      message: "Pokemon insertado correctamente. Con el ID "+ data.insertId
    })
  })
});




// listen for requests :)
const listener = app.listen(process.env.PORT, () => {
  console.log("Your app is listening on port " + listener.address().port);
});
