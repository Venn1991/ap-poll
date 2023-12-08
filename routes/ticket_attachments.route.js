const express = require('express');
const controller = require('../controllers/ticket_attachments.controller.js');
const router = express.Router();
router.post('/ticket_attachments/getall', controller.getAll);
router.get('/ticket_attachments/:id', controller.getById);
router.post('/ticket_attachments/', controller.create);
router.put('/ticket_attachments/:id', controller.updateById);
router.delete('/ticket_attachments/:id', controller.deletedById);

//join queries
router.get('/getallticketattachmentswithjoin', controller.getAllWithJoin);

module.exports = router;
