const connectToDatabase = require("../misc/db");

//create a ticket_attachment
async function create(req, res) {
    try {
        // Create the ticket_attachment using the Sequelize model
        const { Ticket_attachments } = await connectToDatabase();

        const data = await Ticket_attachments.create(req.body);
        return res.status(200).json({message: data });
    }catch(e) {
        return res.status(500).json({ error: e.message });
    }
}

//get all ticket_attachment
async function getAll(req, res) {
    try {
        // Retrieve all ticket_attachment using the Sequelize model
        const {Ticket_attachments} = await connectToDatabase();

        const data = await Ticket_attachments.findAll();
        return res.status(200).json({message : data});
    }catch(e) {
        return res.status(500).json({ error: e.message});
    }
}

//get a single ticket_attachment
async function getById(req, res) {
    try {
        // Retrieve the ticket_attachment using the Sequelize model and the ID from req.params.id
        const {Ticket_attachments} = await connectToDatabase();

        const data = await Ticket_attachments.findByPk(req.params.id);
        if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
        return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
}

// Update a ticket_attachment
async function updateById(req, res) {
    try {
      const { Ticket_attachments } = await connectToDatabase();
      // Update the ticket_attachment using the Sequelize model
      const data = await Ticket_attachments.findByPk(req.params.id);
      if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
       // Update ticket_attachment properties
      if (req.body.title) data.title = req.body.title;
      if (req.body.description) data.description = req.body.description;
      await data.save();
      return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
  }
  

  //delete a ticket_attachment
  async function deletedById(req, res) {
    try {
      const { Ticket_attachments } = await connectToDatabase();
      const data = await Ticket_attachments.findByPk(req.params.id);
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
		FROM ticket_attachments ta

    left join ticket_master tm on
    ta.ticket_master_id = tm.ticket_master_pk
    
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