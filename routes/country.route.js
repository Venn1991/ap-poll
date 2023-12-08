const express = require("express");
const controller = require("../controllers/country.controller.js");
const router = express.Router();
router.get("/country/getall", controller.getAll);
router.get("/country/:id", controller.getById);
router.post("/country/", controller.create);
router.put("/country/:id", controller.updateById);
router.delete("/country/:id", controller.deletedById);

module.exports = router;
