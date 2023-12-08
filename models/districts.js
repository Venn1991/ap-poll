module.exports = (sequelize, DataTypes) => {
    return sequelize.define(
      "districts",
      {
        district_pk: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          autoIncrement: true,
        },
        state_id: DataTypes.INTEGER,
        district_name: DataTypes.STRING,
      },
  
      {
        tableName: "districts",
        engine: "InnoDB",
        timestamps: false,
      }
    );
  };