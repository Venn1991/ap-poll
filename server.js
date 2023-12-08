'use strict';
const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const connectToDatabase = require('./misc/db');
//const noteRouter = require('./routes/note.route.js');
const countryRouter = require('./routes/country.route.js');
const constituenciesRouter = require('./routes/constituencies.route.js');
const designationRouter = require('./routes/designation.route.js');
const districtsRouter = require('./routes/districts.route.js');
const divisionsRouter = require('./routes/divisions.route.js');
const lookupRouter = require('./routes/lookup.route.js');
const mandalsRouter = require('./routes/mandals.route.js');
const navaratnaluRouter = require('./routes/navaratnalu.route.js');
const Page_accessRouter = require('./routes/page_access.route.js');
const PartsRouter = require('./routes/parts.route.js');
const statesRouter = require('./routes/states.route.js');
//const boothsRouter = require('./routes/booths.route.js');
const access_permisionRouter = require('./routes/access_permissions.route.js');
const poll_surveyRouter = require('./routes/poll_survey.route.js');
const sachivalayamRouter = require('./routes/sachivalayam.route.js');
const ticket_attachmentsRouter = require('./routes/ticket_attachments.route.js');
const ticket_escalationRouter = require('./routes/ticket_escalation.route.js');
const ticket_masterRouter = require('./routes/ticket_master.route.js');
const userRouter = require('./routes/users.route.js');
const villageRouter = require('./routes/villages.route.js');
const votersRouter = require('./routes/voters.route.js');
const twilioRouter = require('./routes/twilio.route.js');

const { join } = require('path');
const { sendSMS } = require('./services/sms');

const app = express();
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
console.log('Project path :' + __dirname);
app.use('/', express.static(join(__dirname, 'public')));
const corsOptions = { credentials: true, origin: '*' };
app.use(cors(corsOptions));
//app.use(cors());

// app.use(function (req, res, next) {
// 	var allowedDomains = [
// 		'http://localhost:3001',
// 		'http://localhost:3000',
// 		'https://sp.crowdfundenergy.in',
// 		'https://consumer.crowdfundenergy.in',
// 		'https://consumer.crowdfundenergy.com',
// 	];
// 	var origin = req.headers.origin;

// 	if (allowedDomains.indexOf(origin) > -1) {
// 		res.setHeader('Access-Control-Allow-Origin', origin);
// 	}

// 	res.setHeader('Access-Control-Allow-Origin', '*');

// 	res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');
// 	res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type, Accept');
// 	res.setHeader('Access-Control-Allow-Credentials', true);
// 	next();
// });

app.use(express.json());

app.use(twilioRouter);
app.use(countryRouter);
app.use(statesRouter);
//app.use(boothsRouter);
app.use(access_permisionRouter);
app.use(constituenciesRouter);
app.use(designationRouter);
app.use(districtsRouter);
app.use(divisionsRouter);
app.use(lookupRouter);
app.use(mandalsRouter);
app.use(navaratnaluRouter);
app.use(Page_accessRouter);
app.use(PartsRouter);
app.use(poll_surveyRouter);
app.use(sachivalayamRouter);
app.use(ticket_attachmentsRouter);
app.use(ticket_escalationRouter);
app.use(ticket_masterRouter);
app.use(userRouter);
app.use(villageRouter);
app.use(votersRouter);

app.get('/', async (req, res) => {
	try {
		await connectToDatabase();
		console.log('Connection successful. ');
		return res.status(200).json({ message: 'Connection successful.' });
	} catch (err) {
		return res.status(500).send('Could not connect to the database.');
	}
});

app.post('/sendotp', async (req, res) => {
	const otpResult = await sendSMS('9059108434', 'Vijay, Weclome to YSRC Survey.', '321321');
	if (otpResult.success) {
		res.status(200).json({ success: true, message: 'Otp sent successfully' });
	} else {
		res.status(500).json({ success: false, message: 'otp sending failed' });
	}
});

app.listen(8080, () => {
	console.log('Server is running on port 8080');
});
