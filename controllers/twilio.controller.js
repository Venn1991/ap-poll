var consts = require('../misc/constants.js');
const twilio = require('twilio');
const accountSid = consts.twilioAccountSid;
const authToken = consts.twilioAuthToken;

const client = twilio(accountSid, authToken);

async function sendCreds(req, res) {
	function getPassword(length) {
		const charset = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
		let password = '';

		for (let i = 0; i < length; i++) {
			const randomIndex = Math.floor(Math.random() * charset.length);
			password += charset[randomIndex];
		}

		return password;
	}
	const { toNumber } = req.body;
	const tempPassword = getPassword(8);
	var messageBody = consts.sendCredsMessage + tempPassword;
	const fromNumber = consts.twilioNumber;
	try {
		client.messages
			.create({
				body: messageBody,
				from: fromNumber,
				to: '+91' + toNumber,
			})
			.then((message) => {
				console.log('Message sent. SID:', message.sid);
				res.status(200).json({ message: 'done' });
				//return message;
			})
			.catch((error) => {
				console.error('Error sending message:', error);
				return res.status(500).json({ error: error });
				//throw error;
			});
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

module.exports = {
	sendCreds,
};
