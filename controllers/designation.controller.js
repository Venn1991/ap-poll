const { query } = require('express');
const connectToDatabase = require('../misc/db');

//create a designation
async function create(req, res) {
	try {
		// Create the designation using the Sequelize model
		const { Designation } = await connectToDatabase();

		const data = await Designation.create(req.body);
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

async function getAll(req, res) {
	try {
		// Retrieve all designation using the Sequelize model
		const { sequelize } = await connectToDatabase();

		const data = await sequelize.query(
			// `select * from lookup
			//  where lookup_pk IN (36, 38)
			//  `,

			`select * from lookup
       where lookup_pk = 38
       `,

			{
				type: sequelize.QueryTypes.SELECT,
			}
		);
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

//get all designation
async function getAll2(req, res) {
	try {
		// Retrieve all designation using the Sequelize model
		const { Designation } = await connectToDatabase();

		const data = await Designation.findAll();
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

//get a single designation
async function getById(req, res) {
	try {
		// Retrieve the designation using the Sequelize model and the ID from req.params.id
		const { Designation } = await connectToDatabase();

		const data = await Designation.findByPk(req.params.id);
		if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

// Update a designation
async function updateById(req, res) {
	try {
		const { Designation } = await connectToDatabase();
		// Update the designation using the Sequelize model
		const data = await Designation.findByPk(req.params.id);
		if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
		// Update designation properties
		if (req.body.title) data.title = req.body.title;
		if (req.body.description) data.description = req.body.description;
		await data.save();
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

//delete a designation
async function deletedById(req, res) {
	try {
		const { Designation } = await connectToDatabase();
		const data = await Designation.findByPk(req.params.id);
		if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
		await data.destroy();
		return res.status(200).json({ message: data });
	} catch (err) {
		return res.status(500).json({ error: err.message });
	}
}

module.exports = {
	getById,
	getAll,
	create,
	updateById,
	deletedById,
};
