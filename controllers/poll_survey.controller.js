const connectToDatabase = require('../misc/db');

async function create(req, res) {
	try {
		// Create or update the poll_survey using the Sequelize model
		const { Poll_survey } = await connectToDatabase();

		const { volunteer_id, voter_pk, intrested_party } = req.body;

		// Check if the combination of volunteer_id and voter_pk exists
		const existingEntry = await Poll_survey.findOne({
			where: {
				volunteer_id: volunteer_id,
				voter_pk: voter_pk,
			},
		});

		if (existingEntry) {
			// If the combination exists, update the existing entry
			await existingEntry.update({
				intrested_party: intrested_party,
			});
			return res.status(200).json({ message: 'Entry updated successfully' });
		} else {
			// If the combination doesn't exist, create a new entry
			const newEntry = await Poll_survey.create({
				volunteer_id: volunteer_id,
				voter_pk: voter_pk,
				intrested_party: intrested_party,
			});
			return res.status(200).json({ message: 'Entry created successfully', data: newEntry });
		}
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

async function save_or_updated_survey(req, res) {
	try {
		const { Poll_survey, Voters } = await connectToDatabase();

		const {
			volunteer_id,
			voter_pk,
			intrested_party,
			phone_no,
			is_resident,
			current_address,
			permenent_address,
			religion_id,
			caste_id,
			disability,
			govt_employee,
		} = req.body;

		console.log(req.body);
		//update user
		const data = await Voters.findByPk(voter_pk);
		if (phone_no) data.phone_no = phone_no;

		if (is_resident) data.is_resident = is_resident;
		if (current_address) data.current_address = current_address;
		if (permenent_address) data.permenent_address = permenent_address;

		if (religion_id) data.religion_id = religion_id;
		if (caste_id) data.caste_id = caste_id;
		if (disability) data.disability = disability;
		if (govt_employee) data.govt_employee = govt_employee;
		await data.save();
		//////////////////////////////////////////////////

		const existingEntry1 = await Poll_survey.findOne({
			where: {
				voter_pk: voter_pk,
			},
		});

		if (existingEntry1) {
			await existingEntry1.update({
				intrested_party: intrested_party,
			});

			return res.status(200).json({ message: 'Entry updated successfully' });
		} else {
			const newEntry1 = await Poll_survey.create({
				volunteer_id: volunteer_id,
				voter_pk: voter_pk,
				intrested_party: intrested_party,
			});

			return res.status(200).json({ message: 'Entry created successfully' });
		}
	} catch (e) {
		console.log(e);
		return res.status(500).json({ error: e.message });
	}
}

//get all poll_survey
async function getAll(req, res) {
	try {
		// Retrieve all poll_survey using the Sequelize model
		const { Poll_survey } = await connectToDatabase();

		const data = await Poll_survey.findAll();
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

//get a single poll_survey
async function getById(req, res) {
	try {
		// Retrieve the poll_survey using the Sequelize model and the ID from req.params.id
		const { Poll_survey } = await connectToDatabase();

		const data = await Poll_survey.findByPk(req.params.id);
		if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

// Update a poll_survey
async function updateById(req, res) {
	try {
		const { Poll_survey } = await connectToDatabase();
		// Update the poll_survey using the Sequelize model
		const data = await Poll_survey.findByPk(req.params.id);
		if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
		// Update poll_survey properties
		if (req.body.title) data.title = req.body.title;
		if (req.body.description) data.description = req.body.description;
		await data.save();
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

//delete a poll_survey
async function deletedById(req, res) {
	try {
		const { Poll_survey } = await connectToDatabase();
		const data = await Poll_survey.findByPk(req.params.id);
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
		FROM poll_survey ps

		left join voters on v
		ps.voter_pk = v.voter_pk 

		;`;

		const data = await sequelize.query(query, {
			type: sequelize.QueryTypes.SELECT,
		});

		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

async function getOpinionReports(req, res) {
	try {
		const { sequelize } = await connectToDatabase();

		//dropdownFilters
		const { state_id, district_id, consistency_id, mandal_id, division_id, sachivalayam_id, part_no, village_id } =
			req.body;

		var query = `
		SELECT 
		m.mandal_pk , m.mandal_name, 
dv.division_pk , dv.division_name ,  
sv.sachivalayam_pk , sv.sachivalayam_name , 
p.part_pk , p.part_no,
vl.village_pk , vl.village_name,
COUNT(*) as totalvoters,
COUNT(CASE WHEN ps.intrested_party = 22 THEN 1 ELSE NULL END) as neutral,
ROUND(((COUNT(CASE WHEN ps.intrested_party = 22 THEN 1 ELSE NULL END) / COUNT(*)) * 100), 1) AS pneutral,
COUNT(CASE WHEN ps.intrested_party = 23 THEN 1 ELSE NULL END) as ysrcp,
ROUND(((COUNT(CASE WHEN ps.intrested_party = 23 THEN 1 ELSE NULL END) / COUNT(*)) * 100), 1) AS pysrcp,
COUNT(CASE WHEN ps.intrested_party = 24 THEN 1 ELSE NULL END) as tdp,
ROUND(((COUNT(CASE WHEN ps.intrested_party = 24 THEN 1 ELSE NULL END) / COUNT(*)) * 100), 1) AS ptdp,
COUNT(CASE WHEN ps.intrested_party = 25 THEN 1 ELSE NULL END) as congress,
ROUND(((COUNT(CASE WHEN ps.intrested_party = 25 THEN 1 ELSE NULL END) / COUNT(*)) * 100), 1) AS pcongress,
COUNT(CASE WHEN ps.intrested_party = 26 THEN 1 ELSE NULL END) as bjp,
ROUND(((COUNT(CASE WHEN ps.intrested_party = 26 THEN 1 ELSE NULL END) / COUNT(*)) * 100), 1) AS pbjp,
COUNT(CASE WHEN ps.intrested_party = 27 THEN 1 ELSE NULL END) as janasena,
ROUND(((COUNT(CASE WHEN ps.intrested_party = 27 THEN 1 ELSE NULL END) / COUNT(*)) * 100), 1) AS pjanasena,
COUNT(CASE WHEN ps.intrested_party = 80 THEN 1 ELSE NULL END) as otherss,
ROUND(((COUNT(CASE WHEN ps.intrested_party = 80 THEN 1 ELSE NULL END) / COUNT(*)) * 100), 1) AS pothers

FROM voters v

        join poll_survey ps on
        v.voter_pk = ps.voter_pk AND ps.intrested_party IS NOT NULL

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
      v.guardian = l.lookup_pk AND v.gender = l.lookup_pk
  
    left join users u on
      v.volunteer_id = u.user_pk  
        
		
	WHERE
		 
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

		query += ' group by m.mandal_pk, dv.division_pk,sv.sachivalayam_pk, p.part_pk, vl.village_pk';

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

async function getOpininoPollDashboardByJoinWhere(req, res) {
	try {
		const { sequelize } = await connectToDatabase();

		//dropdownFilters
		const { state_id, district_id, consistency_id, mandal_id, division_id, sachivalayam_id, part_no, village_id } =
			req.body;

		var query = `
		SELECT *, 
    v.phone_no as voter_phone_no , 
    v.age as voter_age , 
    v.voter_pk as voter_pkk
		FROM voters v

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

    left join lookup l on 
      v.guardian = l.lookup_pk AND v.gender = l.lookup_pk
  
    left join users u on
      v.volunteer_id = u.user_pk  
        
		
	WHERE
		 
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

		const totalVoters = data.length;
		const surveysDone = data.filter((item) => item.is_newregistration == 0 && item.intrested_party !== null).length;
		const newVoterRegistration = data.filter(
			(item) => item.is_newregistration == 1 && item.intrested_party == null
		).length;
		return res.status(200).json({
			message: {
				totalVoters: totalVoters,
				survey: {
					surveysDone: surveysDone,
					surveysNotDone: totalVoters - surveysDone,
				},
				opnion_votes: {
					neutral: data.filter(
						(item) =>
							item.is_newregistration == 0 && item.intrested_party !== null && item.intrested_party == 22
					).length,
					ysrcp: data.filter(
						(item) =>
							item.is_newregistration == 0 && item.intrested_party !== null && item.intrested_party == 23
					).length,
					tdp: data.filter(
						(item) =>
							item.is_newregistration == 0 && item.intrested_party !== null && item.intrested_party == 24
					).length,
					congress: data.filter(
						(item) =>
							item.is_newregistration == 0 && item.intrested_party !== null && item.intrested_party == 25
					).length,
					bjp: data.filter(
						(item) =>
							item.is_newregistration == 0 && item.intrested_party !== null && item.intrested_party == 26
					).length,
					janasena: data.filter(
						(item) =>
							item.is_newregistration == 0 && item.intrested_party !== null && item.intrested_party == 27
					).length,
					others: data.filter(
						(item) =>
							item.is_newregistration == 0 && item.intrested_party !== null && item.intrested_party == 80
					).length,
				},
				gender: {
					male: data.filter(
						(item) => item.is_newregistration == 0 && item.intrested_party !== null && item.gender == 13
					).length,
					female: data.filter(
						(item) => item.is_newregistration == 0 && item.intrested_party !== null && item.gender == 14
					).length,
					tg: data.filter(
						(item) => item.is_newregistration == 0 && item.intrested_party !== null && item.gender == 15
					).length,
				},
				age: {
					'18-25': data.filter(
						(item) =>
							item.is_newregistration == 0 &&
							item.intrested_party !== null &&
							item.voter_age >= 18 &&
							item.voter_age <= 25
					).length,
					'26-35': data.filter(
						(item) =>
							item.is_newregistration == 0 &&
							item.intrested_party !== null &&
							item.voter_age >= 26 &&
							item.voter_age <= 35
					).length,
					'36-45': data.filter(
						(item) =>
							item.is_newregistration == 0 &&
							item.intrested_party !== null &&
							item.voter_age >= 36 &&
							item.voter_age <= 45
					).length,
					'46-55': data.filter(
						(item) =>
							item.is_newregistration == 0 &&
							item.intrested_party !== null &&
							item.voter_age >= 46 &&
							item.voter_age <= 55
					).length,
					'56-65': data.filter(
						(item) =>
							item.is_newregistration == 0 &&
							item.intrested_party !== null &&
							item.voter_age >= 56 &&
							item.voter_age <= 65
					).length,
					'66-66+': data.filter(
						(item) => item.is_newregistration == 0 && item.intrested_party !== null && item.voter_age >= 66
					).length,
				},
				residential: {
					residential: data.filter(
						(item) => item.is_newregistration == 0 && item.intrested_party !== null && item.is_resident == 1
					).length,
					nonresidential: data.filter(
						(item) => item.is_newregistration == 0 && item.intrested_party !== null && item.is_resident == 0
					).length,
				},
				registrations: {
					new: newVoterRegistration,
					pending: newVoterRegistration,
					resolved: 0,
				},
				data: data,
			},
		});
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

module.exports = {
	getById,
	getAll,
	create,
	save_or_updated_survey,
	updateById,
	deletedById,
	getAllWithJoin,
	getOpininoPollDashboardByJoinWhere,
	getOpinionReports,
};
