const connectToDatabase = require('../misc/db');

//create a voters
async function create(req, res) {
	try {
		// Create the voters using the Sequelize model
		const { Voters } = await connectToDatabase();

		const data = await Voters.create(req.body);
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

//get all voters
async function getAll(req, res) {
	try {
		// Retrieve all voters using the Sequelize model
		const { Voters } = await connectToDatabase();
		console.log('all voters');

		const data = await Voters.findAll();
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

//get a single voters
async function getById(req, res) {
	try {
		// Retrieve the voters using the Sequelize model and the ID from req.params.id
		const { Voters } = await connectToDatabase();

		const data = await Voters.findByPk(req.params.id);
		if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

// Update a voters
async function updateById(req, res) {
	try {
		const { Voters } = await connectToDatabase();
		// Update the voters using the Sequelize model
		const data = await Voters.findByPk(req.params.id);
		if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
		// Update voters properties
		if (req.body.title) data.title = req.body.title;
		if (req.body.description) data.description = req.body.description;
		await data.save();
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

// Update a address
async function updateVoterAddress(req, res) {
	try {
		const { voter_pk, permenent_address, current_address, is_resident } = req.body;
		const { Voters } = await connectToDatabase();
		// Update the  using the Sequelize model
		const data = await Voters.findByPk(voter_pk);
		if (!data) throw new HTTPError(404, `id: ${voter_pk} was not found`);
		// Update  properties
		if (permenent_address) data.permenent_address = permenent_address;
		if (current_address) data.current_address = current_address;
		if (is_resident) data.is_resident = is_resident;
		await data.save();
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

// Update a phone
async function updateVoterPhone(req, res) {
	try {
		const { voter_pk, phone_no } = req.body;
		const { Voters } = await connectToDatabase();
		// Update the  using the Sequelize model
		const data = await Voters.findByPk(voter_pk);
		if (!data) throw new HTTPError(404, `id: ${voter_pk} was not found`);
		// Update  properties
		if (phone_no) data.phone_no = phone_no;
		await data.save();
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

//delete a voters
async function deletedById(req, res) {
	try {
		const { Voters } = await connectToDatabase();
		const data = await Voters.findByPk(req.params.id);
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
		SELECT *, v.phone_no as voter_phone_no , v.age as voter_age ,  l.lookup_valuename as guardian_catageri,ll.lookup_valuename as gender_catageri
		FROM voters v

    left join states s on
    v.state_id = s.state_pk

    left join districts d on
    v.district_id = d.district_pk

    left join constituencies c on
    v.consistency_id = c.consistency_pk

    left join mandals m on 
    v.mandal_id = m.mandal_pk
    
    left join divisions dv on
    v.division_id = dv.division_pk

    left join sachivalayam sv on 
    v.sachivalayam_id = sv.sachivalayam_pk

    left join parts p on
    v.part_no = p.part_no

    left join villages vl on
    v.village_id = vl.village_pk

    left join lookup l on 
    v.guardian = l.lookup_pk

    left join lookup ll on 
    v.gender = ll.lookup_pk

    left join users u on
    v.volunteer_id = u.user_pk

	WHERE
	v.is_newregistration = false
    
		;`;

		const data = await sequelize.query(query, { type: sequelize.QueryTypes.SELECT });

		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

async function getAllWithJoinAndWhere(req, res) {
	try {
		const { sequelize } = await connectToDatabase();

		//dropdownFilters
		const { state_id, district_id, consistency_id, mandal_id, division_id, sachivalayam_id, part_no, village_id } =
			req.body;

		var query = `
		SELECT *, 
		v.phone_no as voter_phone_no,
		v.age as voter_age , 
		 v.voter_pk as voter_pkk,
		(SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.caste_id) AS caste_name,
		(SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.religion_id) AS religion_name,
		(SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.guardian) AS guardian_type,
		(SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.gender) AS gender_type
		FROM 
		voters v

        left join poll_survey ps on
        v.voter_pk = ps.voter_pk

		left join states s on
        v.state_id = s.state_pk

		left join districts d on
        v.district_id = d.district_pk

        left join constituencies c on 
        v.consistency_id = c.consistency_pk  
       
        left join mandals m on
        v.mandal_id = m.mandal_pk   
    
        left join divisions dv on
         v.division_id = dv.division_pk

        left join sachivalayam sv on 
      v.sachivalayam_id = sv.sachivalayam_pk
  
    left join parts p on
      v.part_no = p.part_no
  
    left join villages vl on
      v.village_id = vl.village_pk

    
  
    left join users u on
      v.volunteer_id = u.user_pk  
        
		
	WHERE
	v.is_newregistration = false
	AND 
    v.state_id = (:state_id)`;

		if (district_id != null && district_id != '') {
			query += `AND
    v.district_id = (:district_id)`;

			if (consistency_id != null && consistency_id != '') {
				query += `AND
      v.consistency_id = (:consistency_id)`;

				if (mandal_id != null && mandal_id != '') {
					query += `AND
        v.mandal_id = (:mandal_id)`;

					if (division_id != null && division_id != '') {
						query += `AND
          v.division_id = (:division_id)`;

						if (sachivalayam_id != null && sachivalayam_id != '') {
							query += `AND
            v.sachivalayam_id = (:sachivalayam_id)`;

							if (part_no != null && part_no != '') {
								query += `AND
              v.part_no = (:part_no)`;

								if (village_id != null && village_id != '') {
									query += `AND
                v.village_id = (:village_id)`;
								}
							}
						}
					}
				}
			}
		}

		const data = await sequelize.query(query, {
			type: sequelize.QueryTypes.SELECT,
			replacements: {
				state_id: state_id,
				district_id: district_id,
				consistency_id: consistency_id,
				mandal_id: mandal_id,
				division_id: division_id,
				sachivalayam_id: sachivalayam_id,
				part_no: part_no,
				village_id: village_id,
			},
		});

		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

async function votersMappingtogruhasaradhi(req, res) {
	try {
		const { user_pk, voterspkList } = req.body;

		const { VoterMapping } = await connectToDatabase();

		for (const voter_pk of voterspkList) {
			const existingEntry = await VoterMapping.findOne({
				where: {
					voter_id: voter_pk,
				},
			});

			if (existingEntry) {
				await existingEntry.update({ user_id: user_pk });
			} else {
				const newEntry = await VoterMapping.create({
					voter_id: voter_pk,
					user_id: user_pk,
				});
			}
		}

		res.status(200).json({ message: 'done' });
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
	getAllWithJoinAndWhere,
	updateVoterAddress,
	updateVoterPhone,
	votersMappingtogruhasaradhi,
};
