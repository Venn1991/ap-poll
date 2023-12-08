const express = require('express');
const controller = require('../controllers/villages.controller.js');
const router = express.Router();
router.post('/villages/getall', controller.getAll);
router.get('/villages/:id', controller.getById);
router.get('/villages-get-by-id/:id', controller.getAllById);
router.post('/villages/', controller.create);
router.put('/villages/:id', controller.updateById);
router.delete('/villages/:id', controller.deletedById);

//join queries
router.get('/getallvillageswithjoin', controller.getAllWithJoin);

module.exports = router;
