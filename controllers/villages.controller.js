const connectToDatabase = require("../misc/db");

//create a villages
async function create(req, res) {
    try {
        // Create the villages using the Sequelize model
        const { Villages } = await connectToDatabase();

        const data = await Villages.create(req.body);
        return res.status(200).json({message: data });
    }catch(e) {
        return res.status(500).json({ error: e.message });
    }
}

//get all villages
async function getAll(req, res) {
    try {
        // Retrieve all villages using the Sequelize model
        const {Villages} = await connectToDatabase();

        const data = await Villages.findAll();
        return res.status(200).json({message : data});
    }catch(e) {
        return res.status(500).json({ error: e.message});
    }
}

//get all by id villages
async function getAllById(req, res) {
  try {
      // Retrieve all by id villages using the Sequelize model
      const {Villages} = await connectToDatabase();

      const data = await Villages.findAll({where: {part_no: req.params.id}});
      return res.status(200).json({message : data});
  }catch(e) {
      return res.status(500).json({ error: e.message});
  }
}

//get a single village
async function getById(req, res) {
    try {
        // Retrieve the village using the Sequelize model and the ID from req.params.id
        const {Villages} = await connectToDatabase();

        const data = await Villages.findByPk(req.params.id);
        if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
        return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
}

// Update a villages
async function updateById(req, res) {
    try {
      const { Villages } = await connectToDatabase();
      // Update the villages using the Sequelize model
      const data = await Villages.findByPk(req.params.id);
      if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
       // Update villages properties
      if (req.body.part_no) data.part_no = req.body.part_no;
      if (req.body.village_name) data.village_name = req.body.village_name;
      await data.save();
      return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
  }
  

  //delete a villages
  async function deletedById(req, res) {
    try {
      const { Villages } = await connectToDatabase();
      const data = await Villages.findByPk(req.params.id);
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
		FROM villages v

    left join parts p on
    v.part_no = p.part_no
    
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
  