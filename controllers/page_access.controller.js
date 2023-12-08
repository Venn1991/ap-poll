const connectToDatabase = require("../misc/db");

//create a page_access
async function create(req, res) {
    try {
        // Create the page_access using the Sequelize model
        const { Page_access } = await connectToDatabase();

        const data = await Page_access.create(req.body);
        return res.status(200).json({message: data });
    }catch(e) {
        return res.status(500).json({ error: e.message });
    }
}

//get all page_access
async function getAll(req, res) {
    try {
        // Retrieve all page_access using the Sequelize model
        const {Page_access} = await connectToDatabase();

        const data = await Page_access.findAll();
        return res.status(200).json({message : data});
    }catch(e) {
        return res.status(500).json({ error: e.message});
    }
}

//get a single page_access
async function getById(req, res) {
    try {
        // Retrieve the page_access using the Sequelize model and the ID from req.params.id
        const {Page_access} = await connectToDatabase();

        const data = await Page_access.findByPk(req.params.id);
        if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
        return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
}

// Update a page_access
async function updateById(req, res) {
    try {
      const { Page_access } = await connectToDatabase();
      // Update the page_access using the Sequelize model
      const data = await Page_access.findByPk(req.params.id);
      if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
       // Update page_access properties
      if (req.body.title) data.title = req.body.title;
      if (req.body.description) data.description = req.body.description;
      await data.save();
      return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
  }
  

  //delete a page_access
  async function deletedById(req, res) {
    try {
      const { Page_access } = await connectToDatabase();
      const data = await Page_access.findByPk(req.params.id);
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
		FROM page_access p

    left join users u on
    p.user_id = u.user_pk
    
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