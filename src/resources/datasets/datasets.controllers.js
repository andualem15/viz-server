import { pool } from "../../db/connect.js";
import { createCustomError } from "../../errors/customErrors.js";
import { tryCatchWrapper } from "../../middlewares/tryCatchWrapper.js";

/**
 * @returns dataset object
 */
async function getDataset(id) {
    let sql = "SELECT * FROM dataset WHERE id = ?";
    const [rows] = await pool.query(sql,[id]);
    return rows[0];
}

/**
 * @description Get all zones
 * @route GET /zones
 */
export const getData = tryCatchWrapper(async function (req, res, next) {
    const {id} = req.params;

    const dataset = await getDataset(id);

    let sql = dataset.queryString;
    const [rows] = await pool.query(sql);
if(!rows.length) return res.status(204).json({message: "empty dataset"});

return res.status(200).json({datasetvalue: rows});
});