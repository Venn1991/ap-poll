const Sequelize = require('sequelize');
//const NoteModel = require('../models/Note');
const CountryModel = require('../models/country');
const AccessPermissionsModel = require('../models/access_permissions');
//const BoothsModel = require('../models/booths');
const StatesModel = require('../models/states');
const ConstituenciesModel = require('../models/constituencies');
const DesignationModel = require('../models/designation');
const DistrictsModel = require('../models/districts');
const DivisionsModel = require('../models/divisions');
const LookupModel = require('../models/lookup');
const MandalsModel = require('../models/mandals');
const NavaratnaluModel = require('../models/navaratnalu');
const PageAccessModel = require('../models/page_access');
const PartsModel = require('../models/parts');
const Poll_surveyModel = require('../models/poll_survey');
const SachivalayamModel = require('../models/sachivalayam');
const Ticket_attachmentsModel = require('../models/ticket_attachments');
const Ticket_escalatiionModel = require('../models/ticket_escalation');
const Ticket_masterModel = require('../models/ticket_master');
const UsersModel = require('../models/users');
const VillagesModel = require('../models/villages');
const VotersModel = require('../models/voters');
const VoterMappingModel = require('../models/voter_mapping');

const sequelize = new Sequelize('u276789778_polling_survey', 'u276789778_polling_survey', '123@Mango', {
	dialect: 'mysql',
	host: '62.72.28.52',
	port: 3306,
	//logging: true,
	logging: false,
});

//const Note = NoteModel(sequelize, Sequelize);
const VoterMapping = VoterMappingModel(sequelize, Sequelize);
const Country = CountryModel(sequelize, Sequelize);
const Access_permissions = AccessPermissionsModel(sequelize, Sequelize);
//const Booths = BoothsModel(sequelize, Sequelize);
const States = StatesModel(sequelize, Sequelize);
const Constituencies = ConstituenciesModel(sequelize, Sequelize);
const Designation = DesignationModel(sequelize, Sequelize);
const Districts = DistrictsModel(sequelize, Sequelize);
const Divisions = DivisionsModel(sequelize, Sequelize);
const Lookup = LookupModel(sequelize, Sequelize);
const Mandals = MandalsModel(sequelize, Sequelize);
const Navaratnalu = NavaratnaluModel(sequelize, Sequelize);
const Page_access = PageAccessModel(sequelize, Sequelize);
const Parts = PartsModel(sequelize, Sequelize);
const Poll_survey = Poll_surveyModel(sequelize, Sequelize);
const Sachivalayam = SachivalayamModel(sequelize, Sequelize);
const Ticket_attachments = Ticket_attachmentsModel(sequelize, Sequelize);
const Ticket_escalation = Ticket_escalatiionModel(sequelize, Sequelize);
const Ticket_master = Ticket_masterModel(sequelize, Sequelize);
const Users = UsersModel(sequelize, Sequelize);
const Villages = VillagesModel(sequelize, Sequelize);
const Voters = VotersModel(sequelize, Sequelize);

const Models = {
	VoterMapping,
	Country,
	Access_permissions,
	States,

	Constituencies,
	Designation,
	Districts,
	Divisions,
	Lookup,
	Mandals,
	Navaratnalu,
	Page_access,
	Parts,
	Poll_survey,
	Sachivalayam,
	Ticket_attachments,
	Ticket_escalation,
	Ticket_master,
	Users,
	Villages,
	Voters,
};
const connection = {};

module.exports = async () => {
	if (connection.isConnected) {
		console.log('=> Using existing connection.');
		return { sequelize, ...Models };
	}

	await sequelize.sync();
	await sequelize.authenticate();
	connection.isConnected = true;
	console.log('=>Created a new connection.');
	return { sequelize, ...Models };
};
