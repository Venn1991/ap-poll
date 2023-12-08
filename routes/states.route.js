const express = require('express');
const controller = require('../controllers/states.controller.js');
const router = express.Router();
router.post('/states/getall', controller.getAll);
router.get('/states/:id', controller.getById);
router.post('/states/', controller.create);
router.put('/states/:id', controller.updateById);
router.delete('/states/:id', controller.deletedById);

module.exports = router;
