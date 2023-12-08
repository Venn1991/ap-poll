const express = require('express');
const controller = require('../controllers/voters.controller.js');
const router = express.Router();
router.post('/voters/getall', controller.getAll);
router.get('/voters/:id', controller.getById);
router.post('/voters/', controller.create);
router.put('/voters/:id', controller.updateById);
router.delete('/voters/:id', controller.deletedById);

//join queries
router.get('/getallvoterswithjoin', controller.getAllWithJoin);
router.post('/getallvoterswithjoinandwhere', controller.getAllWithJoinAndWhere);

router.post('/updatevoteraddress', controller.updateVoterAddress);
router.post('/updatevoterphone', controller.updateVoterPhone);

router.post('/votersmappingtogruhasaradhi', controller.votersMappingtogruhasaradhi);

module.exports = router;
