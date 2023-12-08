const connectToDatabase = require("../misc/db");

//create a ticket_escalation
async function create(req, res) {
    try {
        // Create the ticket_escalation using the Sequelize model
        const { Ticket_escalation } = await connectToDatabase();

        const data = await Ticket_escalation.create(req.body);
        return res.status(200).json({message: data });
    }catch(e) {
        return res.status(500).json({ error: e.message });
    }
}

//get all ticket_escalation
async function getAll(req, res) {
    try {
        // Retrieve all ticket_escalation using the Sequelize model
        const {Ticket_escalation} = await connectToDatabase();

        const data = await Ticket_escalation.findAll();
        return res.status(200).json({message : data});
    }catch(e) {
        return res.status(500).json({ error: e.message});
    }
}

//get a single ticket_escalation
async function getById(req, res) {
    try {
        // Retrieve the ticket_escalation using the Sequelize model and the ID from req.params.id
        const {Ticket_escalation} = await connectToDatabase();

        const data = await Ticket_escalation.findByPk(req.params.id);
        if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
        return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
}

// Update a ticket_escalation
async function updateById(req, res) {
    try {
      const { Ticket_escalation } = await connectToDatabase();
      // Update the ticket_escalation using the Sequelize model
      const data = await Ticket_escalation.findByPk(req.params.id);
      if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
       // Update ticket_escalation properties
      if (req.body.title) data.title = req.body.title;
      if (req.body.description) data.description = req.body.description;
      await data.save();
      return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
  }
  

  //delete a ticket_escalation
  async function deletedById(req, res) {
    try {
      const { Ticket_escalation } = await connectToDatabase();
      const data = await Ticket_escalation.findByPk(req.params.id);
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
		FROM ticket_escalation te

    left join ticket_master tm on
    te.ticket_master_id = tm.ticket_master_pk
    
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