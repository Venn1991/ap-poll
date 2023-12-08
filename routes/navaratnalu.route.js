const express = require('express');
const controller = require('../controllers/navaratnalu.controller.js');
const router = express.Router();
router.post('/navaratnalu/getall', controller.getAll);
router.get('/navaratnalu/:id', controller.getById);
router.post('/navaratnalu/', controller.create);
router.put('/navaratnalu/:id', controller.updateById);
router.delete('/navaratnalu/:id', controller.deletedById);

module.exports = router;
