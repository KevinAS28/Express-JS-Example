import Path from 'path'
import { Route } from "./router";
import server from "./serverobj";
import db from "./db";
// import {UserPhotosRoute} from "./extrainit";
//import {UserPhotosRoute} from "./extrainit";
import Express from "express";

server.use('/photo/:username/userphotos/:index',(req,res)=>{
  db.query("select * from user_images where username = '" + req.params.username+"'",{type:db.QueryTypes.SELECT}).then(data=>{
    console.log(data)
    const { index } = req.params
    if(data.length - 1 >= index){
      const imageData = data[index]
      const image = imageData.image
      console.log(imageData['image'])
      console.log(imageData.image)
      const path = __dirname + `/../foto/${image}.jpg`
      console.log(path)
      res.sendFile(Path.resolve(path))
    }else{
      res.send("IMAGE NOT FOUND").end()
    }
})
})

server.use('/photo/file/:filename',(req,res)=>{
  const image = req.params.filename;
  const path = __dirname + `/../foto/${image}`
  console.log(path)
  res.sendFile(Path.resolve(path))  
})


server.use('/photo/:username/index', (req, res)=>{
  db.query("select * from user_images where username = '" + req.params.username+"'",{type:db.QueryTypes.SELECT}).then(data=>{
    res.json({'length': data.length});
  })
})

function UserPhotosRoute(server){
  db.query("select * from user_images").then(data=>{
      data.forEach((value, index)=>{
          console.log(value[index]);
          var id = value[index]['id'];
          var image = value[index]['image'];
          var url = `/user/photos/${id}/${index}`;
          console.log(`url user photos ${url} added`);
          server.get(url, Express.static(`./foto/${image}`));
      });
  }).catch(
      onReject=>{
          console.log("Error: "+ String(onReject));
      }
      )
}

Route(server);
UserPhotosRoute(server);

server.listen(7100, () => {
  console.log("Server start");
});

