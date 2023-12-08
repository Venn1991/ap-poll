const express = require('express');
const controller = require('../controllers/twilio.controller.js');
const router = express.Router();
router.post('/twilio/sendcreds', controller.sendCreds);

module.exports = router;
