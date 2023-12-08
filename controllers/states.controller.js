const connectToDatabase = require("../misc/db");

//create a state
async function create(req, res) {
    try {
        // Create the state using the Sequelize model
        const { States } = await connectToDatabase();

        const data = await States.create(req.body);
        return res.status(200).json({message: data });
    }catch(e) {
        return res.status(500).json({ error: e.message });
    }
}

//get all states
async function getAll(req, res) {
    try {
        // Retrieve all states using the Sequelize model
        const {States} = await connectToDatabase();

        const data = await States.findAll();
        return res.status(200).json({message : data});
    }catch(e) {
        return res.status(500).json({ error: e.message});
    }
}

//get a single state
async function getById(req, res) {
    try {
        // Retrieve the state using the Sequelize model and the ID from req.params.id
        const {States} = await connectToDatabase();

        const data = await States.findByPk(req.params.id);
        if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
        return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
}

// Update a state
async function updateById(req, res) {
    try {
      const { States } = await connectToDatabase();
      // Update the states using the Sequelize model
      const data = await States.findByPk(req.params.id);
      if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
       // Update states properties 
      if (req.body.state_name) data.state_name = req.body.state_name;
      await data.save();
      return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
  }
  

  //delete a states
  async function deletedById(req, res) {
    try {
      const { States } = await connectToDatabase();
      const data = await States.findByPk(req.params.id);
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