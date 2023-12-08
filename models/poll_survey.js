module.exports = (sequelize, DataTypes) => {
	return sequelize.define(
		'poll_survey',
		{
			poll_survey_pk: {
				type: DataTypes.INTEGER,
				primaryKey: true,
				autoIncrement: true,
			},
			volunteer_id: DataTypes.INTEGER,
			voter_pk: DataTypes.INTEGER,
			intrested_party: DataTypes.INTEGER,
			voted_party: DataTypes.INTEGER,
		},

		{
			tableName: 'poll_survey',
			engine: 'InnoDB',
			timestamps: false,
		}
	);
};
