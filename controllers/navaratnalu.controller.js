const connectToDatabase = require("../misc/db");

//create a navaratnalu
async function create(req, res) {
    try {
        // Create the navaratnalu using the Sequelize model
        const { Navaratnalu } = await connectToDatabase();

        const data = await Navaratnalu.create(req.body);
        return res.status(200).json({message: data });
    }catch(e) {
        return res.status(500).json({ error: e.message });
    }
}

//get all navaratnalu
async function getAll(req, res) {
    try {
        // Retrieve all navaratnalu using the Sequelize model
        const {Navaratnalu} = await connectToDatabase();

        const data = await Navaratnalu.findAll();
        return res.status(200).json({message : data});
    }catch(e) {
        return res.status(500).json({ error: e.message});
    }
}

//get a single navaratnalu
async function getById(req, res) {
    try {
        // Retrieve the navaratnalu using the Sequelize model and the ID from req.params.id
        const {Navaratnalu} = await connectToDatabase();

        const data = await Navaratnalu.findByPk(req.params.id);
        if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
        return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
}

// Update a navaratnalu
async function updateById(req, res) {
    try {
      const { Navaratnalu } = await connectToDatabase();
      // Update the navaratnalu using the Sequelize model
      const data = await Navaratnalu.findByPk(req.params.id);
      if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
       // Update navaratnalu properties
      if (req.body.title) data.title = req.body.title;
      if (req.body.description) data.description = req.body.description;
      await data.save();
      return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
  }
  

  //delete a navaratnalu
  async function deletedById(req, res) {
    try {
      const { Navaratnalu } = await connectToDatabase();
      const data = await Navaratnalu.findByPk(req.params.id);
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