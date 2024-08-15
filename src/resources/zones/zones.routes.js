import express from "express";
import {
    createZone,
    deleteZone,
    getAllZones,
    getSingleZone,
    updateZone,
} from "./zones.controllers.js";

const router = express.Router();

router.route("/").get(getAllZones).post(createZone);
router.route("/:id").get(getSingleZone).patch(updateZone).delete(deleteZone);

export default router;