import express from "express";
import {
    getData,
} from "./datasets.controllers.js";

const router = express.Router();

//router.route("/").get(getAllZones).post(createZone);
router.route("/:id").get(getData);

export default router;