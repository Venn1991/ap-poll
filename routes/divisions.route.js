const express = require('express');
const controller = require('../controllers/divisions.controller.js');
const router = express.Router();
router.post('/divisions/getall', controller.getAll);
router.get('/divisions/:id', controller.getById);
router.post('/divisions/', controller.create);
router.get('/divisions-get-by-id/:id', controller.getAllById);
router.put('/divisions/:id', controller.updateById);
router.delete('/divisions/:id', controller.deletedById);

//join queries
router.post('/getalldivisionswithjoin', controller.getAllWithJoin);

module.exports = router;
