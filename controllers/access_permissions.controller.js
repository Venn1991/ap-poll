const connectToDatabase = require("../misc/db");

//create a access_permissions
async function create(req, res) {
    try {
        // Create the access_permissions using the Sequelize model
        const {Access_permissions} = await connectToDatabase();

        const data = await Access_permissions.create(req.body);
        return res.status(200).json({message: data });
    }catch(e) {
        return res.status(500).json({ error: e.message });
    }
}

//get all access_permissions
async function getAll(req, res) {
    try {
        // Retrieve all access_permissions using the Sequelize model
        const {Access_permissions} = await connectToDatabase();

        const data = await Access_permissions.findAll();
        return res.status(200).json({message : data});
    }catch(e) {
        return res.status(500).json({ error: e.message});
    }
}

//get a single access_permissions
async function getById(req, res) {
    try {
        // Retrieve the access_permissions using the Sequelize model and the ID from req.params.id
        const {Access_permissions} = await connectToDatabase();

        const data = await Access_permissions.findByPk(req.params.id);
        if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
        return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
}

// Update a access_permissions
async function updateById(req, res) {
    try {
      const { Access_permissions } = await connectToDatabase();
      // Update the access_permissions using the Sequelize model
      const data = await Access_permissions.findByPk(req.params.id);
      if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
       // Update access_permissions properties
      //if (req.body.title) data.title = req.body.title;
      //if (req.body.description) data.description = req.body.description;
      if (req.body.user_id) data.user_id = req.body.user_id;
      await data.save();
      return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
  }
  

  //delete a access_permissions
  async function deletedById(req, res) {
    try {
      const { Access_permissions } = await connectToDatabase();
      const data = await Access_permissions.findByPk(req.params.id);
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
  