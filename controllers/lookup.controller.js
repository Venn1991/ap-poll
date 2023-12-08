const connectToDatabase = require("../misc/db");

//create a lookup
async function create(req, res) {
    try {
        // Create the lookup using the Sequelize model
        const { Lookup } = await connectToDatabase();

        const data = await Lookup.create(req.body);
        return res.status(200).json({message: data });
    }catch(e) {
        return res.status(500).json({ error: e.message });
    }
}

//get all lookup
async function getAll(req, res) {
    try {
        // Retrieve all lookup using the Sequelize model
        const {Lookup} = await connectToDatabase();

        const data = await Lookup.findAll();
        return res.status(200).json({message : data});
    }catch(e) {
        return res.status(500).json({ error: e.message});
    }
}

//get all religion
async function getAllReligion(req, res){
  try {
		const { sequelize } = await connectToDatabase();

		var query = `
    SELECT *, l.lookup_valuename as religion_name
    FROM lookup l
    WHERE lookup_name = "religion_list"`;

		const data = await sequelize.query(query, {
			type: sequelize.QueryTypes.SELECT,
		});

		return res.status(200).json({ message: data });
	} catch (err) {
		return res.status(500).json({ error: err.message });
	}
}

//get all caste's
async function getAllCastes(req, res){
  try {
		const { sequelize } = await connectToDatabase();

		var query = `
    SELECT *, l.lookup_valuename as caste_name
    FROM lookup l
    WHERE lookup_name = "caste_list"`;

		const data = await sequelize.query(query, {
			type: sequelize.QueryTypes.SELECT,
		});

		return res.status(200).json({ message: data });
	} catch (err) {
		return res.status(500).json({ error: err.message });
	}
}

//get all designations
async function getAllDesignations(req, res){
  try {
		const { sequelize } = await connectToDatabase();

		var query = `
    SELECT *, l.lookup_valuename as designation_name
    FROM lookup l
    WHERE lookup_name = "designationlist"`;

		const data = await sequelize.query(query, {
			type: sequelize.QueryTypes.SELECT,
		});

		return res.status(200).json({ message: data });
	} catch (err) {
		return res.status(500).json({ error: err.message });
	}
}

//get all parties
async function getAllParties(req, res){
  try {
		const { sequelize } = await connectToDatabase();

		var query = `
    SELECT *, l.lookup_valuename as party_name
    FROM lookup l
    WHERE lookup_name = "party_list"`;

		const data = await sequelize.query(query, {
			type: sequelize.QueryTypes.SELECT,
		});

		return res.status(200).json({ message: data });
	} catch (err) {
		return res.status(500).json({ error: err.message });
	}
}


//get a single lookup
async function getById(req, res) {
    try {
        // Retrieve the lookup using the Sequelize model and the ID from req.params.id
        const {Lookup} = await connectToDatabase();

        const data = await Lookup.findByPk(req.params.id);
        if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
        return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
}

// Update a lookup
async function updateById(req, res) {
    try {
      const { Lookup } = await connectToDatabase();
      // Update the lookup using the Sequelize model
      const data = await Lookup.findByPk(req.params.id);
      if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
       // Update lookup properties
      if (req.body.lookup_name) data.lookup_name = req.body.lookup_name;
      if (req.body.lookup_valuename) data.lookup_valuename = req.body.lookup_valuename;
      await data.save();
      return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
  }
  

  //delete a lookup
  async function deletedById(req, res) {
    try {
      const { Lookup } = await connectToDatabase();
      const data = await Lookup.findByPk(req.params.id);
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
    getAllReligion,
    getAllCastes,
    create,
    updateById,
    deletedById,
    getAllDesignations,
    getAllParties,
  };