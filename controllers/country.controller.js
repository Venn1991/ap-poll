const connectToDatabase = require("../misc/db");

//create a country
async function create(req, res) {
    try {
        // Create the country using the Sequelize model
        const {Country} = await connectToDatabase();

        const data = await Country.create(req.body);
        return res.status(200).json({message: data });
    }catch(e) {
        return res.status(500).json({ error: e.message });
    }
}

//get all county
async function getAll(req, res) {
    try {
        // Retrieve all country using the Sequelize model
        const {Country} = await connectToDatabase();

        const data = await Country.findAll();
        return res.status(200).json({message : data});
    }catch(e) {
        return res.status(500).json({ error: e.message});
    }
}

//get a single country
async function getById(req, res) {
    try {
        // Retrieve the note using the Sequelize model and the ID from req.params.id
        const {Country} = await connectToDatabase();

        const data = await Country.findByPk(req.params.id);
        if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
        return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
}

// Update a country
async function updateById(req, res) {
    try {
      const { Country } = await connectToDatabase();
      // Update the country using the Sequelize model
      const data = await Country.findByPk(req.params.id);
      if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
       // Update country properties
      if (req.body.title) data.title = req.body.title;
      if (req.body.description) data.description = req.body.description;
      await data.save();
      return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
  }
  

  //delete a country
  async function deletedById(req, res) {
    try {
      const { Country } = await connectToDatabase();
      const data = await Country.findByPk(req.params.id);
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
  