module.exports = (sequelize, DataTypes) => {
	return sequelize.define(
		'voter_mapping',
		{
			voter_mapping_pk: {
				type: DataTypes.INTEGER,
				primaryKey: true,
				autoIncrement: true,
			},
			voter_id: {
				type: DataTypes.INTEGER,
				allowNull: false,
			},
			user_id: {
				type: DataTypes.INTEGER,
				allowNull: false,
			},
		},

		{
			tableName: 'voter_mapping',
			engine: 'InnoDB',
			timestamps: false,
		}
	);
};
