import express from "express";
import dotenv from "dotenv";
import {notFound} from "./src/middlewares/notFound.js";
import {handleError} from "./src/middlewares/handleError.js";
import zonesRoute from "./src/resources/zones/zones.routes.js";
import datasetsRoute from "./src/resources/datasets/datasets.routes.js";
import cors from "cors";
dotenv.config();

const app = express();
const port = process.env.PORT || 8080;

const corsOptions = {
    origin: "http://localhost:4200",
    optionsSuccessStatus: 200,
};

//middleware
app.use(cors(corsOptions));
app.use(express.json())

// api routes
app.use("/zones", zonesRoute);
// api routes
app.use("/datasets", datasetsRoute);

app.use(notFound);
app.use(handleError);

app.listen(port, ()=>{
    console.log(`server is running on port ${port}`);
})
