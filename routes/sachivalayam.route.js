const express = require('express');
const controller = require('../controllers/sachivalayam.controller.js');
const router = express.Router();
router.post('/sachivalayam/getall', controller.getAll);
router.get('/sachivalayam/:id', controller.getById);
router.get('/sachivalayam-get-by-id/:id', controller.getAllById);
router.post('/sachivalayam/', controller.create);
router.put('/sachivalayam/:id', controller.updateById);
router.delete('/sachivalayam/:id', controller.deletedById);

//join queries
router.get('/getallsachivalayamwithjoin', controller.getAllWithJoin);

module.exports = router;
