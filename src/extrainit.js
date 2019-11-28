import db from "./db";

export default function UserPhotosRoute(server){
    db.query("select * from user_images").then(data=>{
        data.forEach((value, index)=>{
            server.get(`/user/photos/${value[0]}/${index}`);
        });
    }).catch(
        onReject=>{
            console.log("Error: "+ String(onReject));
        }
        )
}