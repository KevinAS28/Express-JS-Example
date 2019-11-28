import Express from "express";
import Cors from "cors";
import BodyParser from "body-parser";

const server = Express();
server.use(Cors());
server.use(BodyParser.json());
server.use(BodyParser.urlencoded({ extended: false }));
export default server;