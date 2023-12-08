const express = require('express');
const controller = require('../controllers/constituencies.controller.js');
const router = express.Router();
router.post('/constituencies/getall', controller.getAll);
router.get('/constituencies/:id', controller.getById);
router.post('/constituencies/', controller.create);
router.put('/constituencies/:id', controller.updateById);
router.delete('/constituencies/:id', controller.deletedById);

//join queries
router.get('/getallconstituencieswithjoin', controller.getAllWithJoin);

module.exports = router;
