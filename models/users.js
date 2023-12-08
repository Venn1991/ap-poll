module.exports = (sequelize, DataTypes) => {
	return sequelize.define(
		'users',
		{
			user_pk: {
				type: DataTypes.INTEGER,
				primaryKey: true,
				autoIncrement: true,
			},
			user_displayname: DataTypes.STRING,
			username: DataTypes.STRING,
			password: DataTypes.STRING,
			phone_no: DataTypes.STRING,
			office_phone_no: DataTypes.STRING,
			age: DataTypes.INTEGER,
			email: DataTypes.STRING,
			designation_id: DataTypes.INTEGER,
			reporting_manager: DataTypes.INTEGER,
			state_id: DataTypes.INTEGER,
			consistency_id: DataTypes.INTEGER,
			mandal_id: DataTypes.INTEGER,
			division_id: DataTypes.INTEGER,
			sachivalayam_id: DataTypes.INTEGER,
			village_id: DataTypes.INTEGER,
			district_id: DataTypes.INTEGER,
			part_no: DataTypes.INTEGER,
			is_first_login: DataTypes.BOOLEAN,
		},
		{
			tableName: 'users',
			engine: 'InnoDB',
			timestamps: false,
		}
	);
};
