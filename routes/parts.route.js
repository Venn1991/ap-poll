const express = require('express');
const controller = require('../controllers/parts.controller.js');
const router = express.Router();
router.post('/parts/getall', controller.getAll);
router.get('/parts/:id', controller.getById);
router.get('/parts-get-by-id/:id', controller.getAllById);
router.post('/parts/', controller.create);
router.put('/parts/:id', controller.updateById);
router.delete('/parts/:id', controller.deletedById);

//join queries
router.get('/getallpartswithjoin', controller.getAllWithJoin);

module.exports = router;
