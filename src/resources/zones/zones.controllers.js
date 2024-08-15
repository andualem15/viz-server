import { pool } from "../../db/connect.js";
import { createCustomError } from "../../errors/customErrors.js";
import { tryCatchWrapper } from "../../middlewares/tryCatchWrapper.js";

/**
 * @returns zone object
 */
async function getZone(id) {
    let sql = "SELECT * FROM zone WHERE id = ?";
    const [rows] = await pool.query(sql,[id]);
    return rows[0];
}

/**
 * @description Create zone
 * @route POST /zones
 */

//import { pool } from "../../db/connect.js";

export const createZone = tryCatchWrapper(async function (req, res, next) {
const {name,short_name,region,iso} = req.body;

if(!name)
    return next(createCustomError("All fielsd are required", 400));

let sql = "INSERT INTO zones (name,short_name,region,iso) VALUES (?,?,?,?)";
await pool.query(sql,[name,short_name,region,iso]);

return res.status(201).json({message: "zone has been created"});
})

/**
 * @description Get all zones
 * @route GET /zones
 */
export const getAllZones = tryCatchWrapper(async function (req, res, next) {
    let sql = "SELECT * FROM zones";
    const [rows] = await pool.query(sql);
if(!rows.length) return res.status(204).json({message: "empty list"});

return res.status(200).json({zones: rows});
});

/**
 * @description Get Single zone
 * @route GET /zones/:id
 */
export const getSingleZone = tryCatchWrapper(async function (req, res, next) {
    const {id} = req.params;

    const zone = await getZone(id);
    if(!zone) return next(createCustomError("zone note found",404));

    return res.status(200).json(zone);
});

/**
 * @description Update zone
 * @route PATCH /zones/:id
 */
export const updateZone = tryCatchWrapper(async function (req, res, next) {
    const {id} = req.params;
    const {name,short_name,region,iso} = req.body;

    if(!id || !name || !short_name || !region || !iso)
        return next(createCustomError("All fields are required", 400));

    const zone = await getZone(id);
    if(!zone) return next(createCustomError("zone not found", 404));

    let sql = "UPDATE zone SET name=?, short_name=?, region=?, iso=? WHERE id=?";
    await pool.query(sql,[name,short_name,region,iso,id]);

    return res.status(201).json({message: "zone has been updated"});
});

/**
 * @description Delete zone
 * @route DELETE /zones/:id
 */
export const deleteZone = tryCatchWrapper(async function (req, res, next) {
    const {id} = req.params;

    if(!id)
        return next(createCustomError("Zone Id is required", 400));

    const zone = await getZone(id);
    if(!zone) return next(createCustomError("zone not found", 404));

    let sql = "DELETE DROM zone WHERE id=?";
    await pool.query(sql,[id]);

    return res.status(200).json({message: "zone has been deleted"});
});