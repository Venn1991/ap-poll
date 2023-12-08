const connectToDatabase = require("../misc/db");

//create a ticket_master
async function create(req, res) {
    try {
        // Create the ticket_master using the Sequelize model
        const { Ticket_master } = await connectToDatabase();

        const data = await Ticket_master.create(req.body);
        return res.status(200).json({message: data });
    }catch(e) {
        return res.status(500).json({ error: e.message });
    }
}

//get all ticket_master
async function getAll(req, res) {
    try {
        // Retrieve all ticket_master using the Sequelize model
        const {Ticket_master} = await connectToDatabase();

        const data = await Ticket_master.findAll();
        return res.status(200).json({message : data});
    }catch(e) {
        return res.status(500).json({ error: e.message});
    }
}

//get a single ticket_master
async function getById(req, res) {
    try {
        // Retrieve the ticket_master using the Sequelize model and the ID from req.params.id
        const {Ticket_master} = await connectToDatabase();

        const data = await Ticket_master.findByPk(req.params.id);
        if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
        return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
}

// Update a ticket_master
async function updateById(req, res) {
    try {
      const { Ticket_master } = await connectToDatabase();
      // Update the ticket_master using the Sequelize model
      const data = await Ticket_master.findByPk(req.params.id);
      if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
       // Update ticket_master properties
      if (req.body.title) data.title = req.body.title;
      if (req.body.description) data.description = req.body.description;
      await data.save();
      return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
  }
  

  //delete a ticket_master
  async function deletedById(req, res) {
    try {
      const { Ticket_master } = await connectToDatabase();
      const data = await Ticket_master.findByPk(req.params.id);
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
		FROM ticket_master tm

    left join voters v on
    tm.voter_pk = v.voter_pk

    left join users u on
    tm.volunteer_id = u.user_pk

    left join navaratnalu n on
    tm.navaratnalu_id = n.navaratnalu_pk

    left join lookup l on
    tm.status_id = l.lookup_pk
    
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