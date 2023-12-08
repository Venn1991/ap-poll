module.exports = (sequelize, DataTypes) => {
	return sequelize.define(
		'voters',
		{
			voter_pk: {
				type: DataTypes.INTEGER,
				primaryKey: true,
				autoIncrement: true,
			},
			part_no: DataTypes.INTEGER,
			part_slno: DataTypes.INTEGER,
			voter_name: DataTypes.STRING,
			voter_id: DataTypes.STRING,
			guardian: DataTypes.INTEGER,
			guardian_name: DataTypes.STRING,
			gender: DataTypes.INTEGER,
			age: DataTypes.INTEGER,
			phone_no: DataTypes.STRING,
			permenent_address: DataTypes.STRING,
			current_address: DataTypes.STRING,
			is_resident: DataTypes.BOOLEAN,
			state_id: DataTypes.INTEGER,
			consistency_id: DataTypes.INTEGER,
			mandal_id: DataTypes.INTEGER,
			division_id: DataTypes.INTEGER,
			sachivalayam_id: DataTypes.INTEGER,
			village_id: DataTypes.INTEGER,
			email: DataTypes.STRING,

			religion_id: DataTypes.INTEGER,
			caste_id: DataTypes.INTEGER,
			disability: DataTypes.BOOLEAN,
			govt_employee: DataTypes.BOOLEAN,
		},

		{
			tableName: 'voters',
			engine: 'InnoDB',
			timestamps: false,
		}
	);
};
