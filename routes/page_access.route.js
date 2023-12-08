const express = require('express');
const controller = require('../controllers/page_access.controller.js');
const router = express.Router();
router.post('/page_access/getall', controller.getAll);
router.get('/page_access/:id', controller.getById);
router.post('/page_access/', controller.create);
router.put('/page_access/:id', controller.updateById);
router.delete('/page_access/:id', controller.deletedById);

//join queries
router.get('/getallpageaccesswithjoin', controller.getAllWithJoin);

module.exports = router;
