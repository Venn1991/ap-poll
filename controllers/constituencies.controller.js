const connectToDatabase = require('../misc/db');

//create a constituencies
async function create(req, res) {
	try {
		// Create the constituencies using the Sequelize model
		const { Constituencies } = await connectToDatabase();

		const data = await Constituencies.create(req.body);
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

//get all constituencies
async function getAll(req, res) {
	try {
		// Retrieve all constituencies using the Sequelize model
		const { Constituencies } = await connectToDatabase();

		const data = await Constituencies.findAll();
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

//get a single constituencie
async function getById(req, res) {
	try {
		// Retrieve the constituencies using the Sequelize model and the ID from req.params.id
		const { Constituencies } = await connectToDatabase();

		const data = await Constituencies.findByPk(req.params.id);
		if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

// Update a constituencies
async function updateById(req, res) {
	try {
		const { Constituencies } = await connectToDatabase();
		// Update the constituencies using the Sequelize model
		const data = await Constituencies.findByPk(req.params.id);
		if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
		// Update constituencies properties
		//if (req.body.title) data.title = req.body.title;
		//if (req.body.description) data.description = req.body.description;
		if (req.body.consistency_id) data.consistency_id = req.body.consistency_id;
		if (req.body.district_pk) data.district_pk = req.body.district_pk;
		if (req.body.consistency_name) data.consistency_name = req.body.consistency_name;
		await data.save();
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

//delete a constituencies
async function deletedById(req, res) {
	try {
		const { Constituencies } = await connectToDatabase();
		const data = await Constituencies.findByPk(req.params.id);
		if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
		await data.destroy();
		return res.status(200).json({ message: data });
	} catch (err) {
		return res.status(500).json({ error: err.message });
	}
}

//joins
async function getAllWithJoin(req, res) {
	try {
		const { sequelize } = await connectToDatabase();

		const query = `
		SELECT *
		FROM constituencies c

    left join districts d on
    c.district_pk = d.district_pk
    
		;`;

		const data = await sequelize.query(query, { type: sequelize.QueryTypes.SELECT });

		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

module.exports = {
	getById,
	getAll,
	create,
	updateById,
	deletedById,
	getAllWithJoin,
};
