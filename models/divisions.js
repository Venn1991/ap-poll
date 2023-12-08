module.exports = (sequelize, DataTypes) => {
    return sequelize.define(
      "divisions",
      {
        division_pk: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          autoIncrement: true,
        },
        mandal_id: DataTypes.INTEGER,
        division_name: DataTypes.STRING,
      },
  
      {
        tableName: "divisions",
        engine: "InnoDB",
        timestamps: false,
      }
    );
  };