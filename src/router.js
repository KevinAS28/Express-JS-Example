import {
  ambilDataKursus,
  simpanDataKursus,
  deleteDataKursus,
  simpanEditDataKursus,
  login,
  userPhotos,
  userPhotoLength
  
} from "./routerkursus";

import Express from "express";



export function Route(server) {
  server.get("/kursus", ambilDataKursus);
  server.post("/simpankursus", simpanDataKursus);
  server.delete("/kursus/:id", deleteDataKursus);
  server.put("/editkursus/:id", simpanEditDataKursus);
  
  server.post("/login", login);
  
  //server.use("/foto", Express.static("./foto"));
  
}
