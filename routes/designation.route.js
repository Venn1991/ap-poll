const express = require('express');
const controller = require('../controllers/designation.controller.js');
const router = express.Router();
router.post('/designation/getall', controller.getAll);
router.get('/designation/:id', controller.getById);
router.post('/designation/', controller.create);
router.put('/designation/:id', controller.updateById);
router.delete('/designation/:id', controller.deletedById);

module.exports = router;
