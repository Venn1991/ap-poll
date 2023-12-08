const connectToDatabase = require('../misc/db');

//create a sachivalayam
async function create(req, res) {
	try {
		// Create the sachivalayam using the Sequelize model
		const { Sachivalayam } = await connectToDatabase();

		const data = await Sachivalayam.create(req.body);
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

//get all sachivalayam
async function getAll(req, res) {
	try {
		// Retrieve all sachivalayam using the Sequelize model
		const { Sachivalayam } = await connectToDatabase();

		const data = await Sachivalayam.findAll();
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

//get all by id sachivalayam
async function getAllById(req, res) {
	try {
		// Retrieve all by id sachivalayam using the Sequelize model
		const { Sachivalayam } = await connectToDatabase();

		const data = await Sachivalayam.findAll({ where: { division_pk: req.params.id } });
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

//get a single sachivalayam
async function getById(req, res) {
	try {
		// Retrieve the sachivalayam using the Sequelize model and the ID from req.params.id
		const { Sachivalayam } = await connectToDatabase();

		const data = await Sachivalayam.findByPk(req.params.id);
		if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

// Update a sachivalayam
async function updateById(req, res) {
	try {
		const { Sachivalayam } = await connectToDatabase();
		// Update the sachivalayam using the Sequelize model
		const data = await Sachivalayam.findByPk(req.params.id);
		if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
		// Update sachivalayam properties
		if (req.body.division_id) data.division_id = req.body.division_id;
		if (req.body.sachivalayam_name) data.sachivalayam_name = req.body.sachivalayam_name;
		await data.save();
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

//delete a sachivalayam
async function deletedById(req, res) {
	try {
		const { Sachivalayam } = await connectToDatabase();
		const data = await Sachivalayam.findByPk(req.params.id);
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
		FROM sachivalayam sv

    left join divisions di on
    sv.division_pk = di.division_pk
    
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
	getAllById,
	create,
	updateById,
	deletedById,
	getAllWithJoin,
};
