module.exports = (sequelize, DataTypes) => {
    return sequelize.define(
      "constituencies",
      {
        consistency_pk: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          autoIncrement: true,
        },
        consistency_id: DataTypes.INTEGER,
        district_pk: {
            type: DataTypes.INTEGER,
            primaryKey: true,
        },
        consistency_name: DataTypes.STRING,
      },
  
      {
        tableName: "constituencies",
        engine: "InnoDB",
        timestamps: false,
      }
    );
  };