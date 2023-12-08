const connectToDatabase = require("../misc/db");

//create a parts
async function create(req, res) {
    try {
        // Create the parts using the Sequelize model
        const { Parts } = await connectToDatabase();

        const data = await Parts.create(req.body);
        return res.status(200).json({message: data });
    }catch(e) {
        return res.status(500).json({ error: e.message });
    }
}

//get all parts
async function getAll(req, res) {
    try {
        // Retrieve all parts using the Sequelize model
        const {Parts} = await connectToDatabase();

        const data = await Parts.findAll();
        return res.status(200).json({message : data});
    }catch(e) {
        return res.status(500).json({ error: e.message});
    }
}

//get all by id parts
async function getAllById(req, res) {
  try {
      // Retrieve all by id parts using the Sequelize model
      const {Parts} = await connectToDatabase();

      const data = await Parts.findAll({where: {sachivalayam_id: req.params.id}});
      return res.status(200).json({message : data});
  }catch(e) {
      return res.status(500).json({ error: e.message});
  }
}


//get a single part
async function getById(req, res) {
    try {
        // Retrieve the part using the Sequelize model and the ID from req.params.id
        const {Parts} = await connectToDatabase();

        const data = await Parts.findByPk(req.params.id);
        if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
        return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
}

// Update a parts
async function updateById(req, res) {
    try {
      const { Parts } = await connectToDatabase();
      // Update the parts using the Sequelize model
      const data = await Parts.findByPk(req.params.id);
      if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
       // Update parts properties
      if (req.body.title) data.title = req.body.title;
      if (req.body.description) data.description = req.body.description;
      await data.save();
      return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
  }
  

  //delete a parts
  async function deletedById(req, res) {
    try {
      const { Parts } = await connectToDatabase();
      const data = await Parts.findByPk(req.params.id);
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
		FROM parts p

    left join sachivalayam s on
    p.sachivalayam_id = s.sachivalayam_pk
    
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