const axios = require('axios');

async function sendSMS(mobile, username, otp) {
	try {
		const apiUrl = `http://colourmoontraining.com/otp_sms/sendsms?user_id=invtechnologies&mobile=${mobile}&message=Dear ${username} your one time password (OTP) ${otp} Regards CMTOTP`;
		// Send the HTTP GET request to the SMS service
		const response = await axios.post(apiUrl);

		// Check the response status from the SMS service
		if (response.status === 200) {
			return { success: true, message: 'SMS sent successfully' };
		} else {
			return { success: false, message: 'SMS sending failed' };
		}
	} catch (error) {
		console.error('An error occurred:', error);
		return { success: false, message: 'SMS sending failed' };
	}
}

module.exports = { sendSMS };
