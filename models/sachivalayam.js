module.exports = (sequelize, DataTypes) => {
	return sequelize.define(
		'sachivalayam',
		{
			sachivalayam_pk: {
				type: DataTypes.INTEGER,
				primaryKey: true,
				autoIncrement: true,
			},
			division_id: DataTypes.INTEGER,
			sachivalayam_name: DataTypes.STRING,
		},
		{
			tableName: 'sachivalayam',
			engine: 'InnoDB',
			timestamps: false,
		}
	);
};
