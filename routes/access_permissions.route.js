const express = require('express');
const controller = require('../controllers/access_permissions.controller.js');
const router = express.Router();
router.post('/access_permissions/getall', controller.getAll);
router.get('/access_permissions/:id', controller.getById);
router.post('/access_permissions/', controller.create);
router.put('/access_permissions/:id', controller.updateById);
router.delete('/access_permissions/:id', controller.deletedById);

module.exports = router;
